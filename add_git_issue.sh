#!/bin/bash -x

if [ $# -ne 1 ]
then
  echo "USAGE: $0 <Issue Description File>"
  echo ""
  echo "Issue Description File is a plain text file describing the issue to be created. The first line is the usse title and the subsequent content will be added to the issue as a comment. It can contain markdown for formatting."
  echo ""
  exit 1
fi

ISSUE_DESC_FILE=$1
ISSUE_DESC=$(cat $ISSUE_DESC_FILE)

echo "Adding issue using $ISSUE_DESC_FILE to GitHub using GHI.."

ghi open --message "$ISSUE_DESC" --assign vmachan > $0.out 2>&1

if [ $? -ne 0 ]
then
  echo "Could not add issue using $ISSUE_DESC_FILE content!!"
  echo "Please check $0.out file for error messages to help resolve."
else
  echo "Added issue using content in $ISSUE_DESC_FILE."
fi

cat $0.out


