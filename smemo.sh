#!/data/data/com.termux/files/usr/bin/bash

# Simple memo script for termux on Android

if [ $# -ne 1 ]
then
	echo "Usage: $0 <memo>"
	exit 1
fi

FILENAME=`date '+%Y%m'`.md
# Fri Jul 13 20:29:01 CDT 2018
DATE=`date`
MEMO=$1

echo >> $FILENAME
echo >> $FILENAME
echo $DATE >> $FILENAME
echo "============================" >> $FILENAME
echo >> $FILENAME
echo $MEMO >> $FILENAME
