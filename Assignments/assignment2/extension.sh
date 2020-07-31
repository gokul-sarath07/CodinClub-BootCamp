#!/bin/bash
ls *.log.1
for file in `ls *.log.1`
do
	fileName=`echo $file | awk -F. '{print $1}'`
	now=`date +'%d%m%Y'`
	echo "Current Date: $now"
	newfilename=$fileName-$now.log
	cp $file $newfilename
done
