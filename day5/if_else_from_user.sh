#!/bin/bash -x
read -p "Enter var 1 and var 2: " var1 var2
if [ $var1 -ge $var2 ]
then
	echo "$var1 is greater"
else
	echo "$var2 is greater"
fi
