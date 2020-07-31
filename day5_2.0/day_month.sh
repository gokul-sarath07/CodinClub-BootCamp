#!/bin/bash
read -p "Enter the day and month: " day month
if [ \( "$day" -ge 20 -a "$month" -eq 3 \) -o "$month" -eq 5 ]
then
	if [ "$day" -le 31 ]
	then
		echo "True"
	else
		echo "False"
	fi
elif [ "$month" -eq 4 -o \( "$month" -eq 6 -a "$day" -le 20 \) ]
then
	if [ "$day" -le 30 ]
	then
		echo "True"
	else
		echo "False"
	fi
else
	echo "False"
fi
