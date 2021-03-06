#!/data/data/com.termux/files/usr/bin/bash
# SPDX-License-Identifier: GPL-3.0
#
# Simple memo script for minimal Linux shell environments

usage() {
	echo "Usage: $0 <memo>"
	exit 1
}

if [ $# -ne 1 ]
then
	usage
fi

BINDIR=`dirname $0`
mkdir -p $BINDIR/memo
cd $BINDIR/memo

FILENAME=`date '+%Y%m'`.md
# Fri Jul 13 20:29:01 CDT 2018
DATE=`date`
MEMO=$1

if [ -f $FILENAME ]
then
	echo >> $FILENAME
	echo >> $FILENAME
fi
echo $DATE >> $FILENAME
echo "============================" >> $FILENAME
echo >> $FILENAME
echo $MEMO | fold -w 79 -s >> $FILENAME
