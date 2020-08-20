#!/bin/bash
read -p "Enter Start(>1) End: " start end
ct=0
for num in `seq $start $end`
do
	value=`factor $num | cut -d ":" -f 2 | cut -d " " -f 2`
	if [ "$value" -eq "$num" ]
	then
		array[$ct]=$num
		ct=$(( $ct + 1 ))
	fi
done
echo "Prime Numbers in the range $start to $end are : " ${array[@]}

