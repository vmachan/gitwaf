#!/bin/bash -x

if [ $# -le 1 ]
then
  echo "USAGE: $0 <Issue Title> <Issue Description File>"
  echo ""
  echo "Issue Description File is a plain text file describing the issue to be created. It will be added to the issue as a comment. It can contain markdown for formatting."
  echo ""
  exit 1
fi

ISSUE_TITLE=$1

if [ $# -eq 2 ]
then
  ISSUE_DESC_FILE=$2
  ISSUE_DESC=`cat $ISSUE_DESC_FILE`
fi

echo "Adding issue [$ISSUE_TITLE] to GitHub using GHI.."

ghi open --message "$ISSUE_TITLE" --assign vmachan > $0.out 2>&1

if [ $? -ne 0 ]
then
  echo "Could not add issue using [$ISSUE_TITLE] content!!"
  echo "Please check $0.out file for error messages to help resolve."
else
  echo "Added issue using [$ISSUE_TITLE] content."
  if [ $# -eq 2 ]
  then
    ISSUE_NUM=`grep -v warning $0.out | grep ^#[0-9][0-9]* | cut -f 1 -d ':' | cut -c2-`
    echo "Now adding comment using description in $ISSUE_DESC_FILE to issue number $ISSUE_NUM.."
    ghi comment --message "$ISSUE_DESC" $ISSUE_NUM >> $0.out 2>&1
    if [ $? -ne 0 ]
    then
      echo "Could not add comment using content in $ISSUE_DESC_FILE!!"
      echo "Please check $0.out file for error messages to help resolve."
      echo ""
    fi
  fi
fi

cat $0.out


