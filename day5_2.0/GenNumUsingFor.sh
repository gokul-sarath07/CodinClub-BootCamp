#!/bin/bash
for i in {1..6}
do
	echo $(( RANDOM%6+1 ))
done
