#!/bin/bash 

if [ $# -ne 2 ]
then
  echo "USAGE: $0 <Template Name> <EPIC Name>"
  echo "       Template is a name of the folder that defines the structure of the epic"
  echo "       EPIC Name is the name to be given to the actual GitHub task that is the epic"
  echo ""
  exit 1
fi

TMPL_FOLDER=$1
EPIC_NAME=$2

for TMPL_FILE in $TMPL_FOLDER/*.md
do
  TMPL_FILE=`basename $TMPL_FILE`
  TMPL_NUM=`echo $TMPL_FILE | cut -c1-1`
  echo $TMPL_NUM
done



