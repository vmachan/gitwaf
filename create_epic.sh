#!/bin/bash 

if [ $# -ne 1 ]
then
  echo "USAGE: $0 <Template Folder Name>"
  echo "       Template is a name of the folder that defines the structure of the epic"
  echo ""
  exit 1
fi

TMPL_FOLDER=$1

cd $TMPL_FOLDER

for TMPL_FILE in *.md
do
  TMPL_FILE=`basename $TMPL_FILE`
  TMPL_NUM=`echo $TMPL_FILE | cut -c1-1`
  echo "Processing issue number $TMPL_NUM using $TMPL_FILE .."

  cp $TMPL_FILE /tmp/$TMPL_FILE

  if [ $TMPL_NUM != 0 ] 
  then
    echo "" >> /tmp/$TMPL_FILE
    echo "Child of #$EPIC_ISSUE_NUM" >> /tmp/$TMPL_FILE
    echo "" >> /tmp/$TMPL_FILE
  fi

  if [ $TMPL_NUM -gt 1 ] 
  then
    echo "" >> /tmp/$TMPL_FILE
    echo "Requires #$ISSUE_NUM" >> /tmp/$TMPL_FILE
    echo "" >> /tmp/$TMPL_FILE
  fi

  ../add_git_issue.sh /tmp/$TMPL_FILE

  ISSUE_NUM=`grep -v warning ../add_git_issue.sh.out | grep ^#[0-9][0-9]* | cut -f 1 -d ':' | cut -c2-`

  if [ $TMPL_NUM == 0 ]
  then
    EPIC_ISSUE_NUM=$ISSUE_NUM
    echo "Main EPIC issue number is $EPIC_ISSUE_NUM"
  fi
done

cd -

