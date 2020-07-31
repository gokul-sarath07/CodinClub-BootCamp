#!/bin/bash
for i in {0..4}
do
	randomValue=$(( RANDOM%900+100 ))
	arrayNum[$i]=$randomValue
done

echo "Array is: " ${arrayNum[@]}

a=${arrayNum[0]}
b=${arrayNum[0]}

for i in "${arrayNum[@]}"
do
	if [ $i -gt $a ]
	then
		a=$i
	fi

	if [ $i -lt $b ]
	then
		b=$i
	fi
done
echo "Greater number: " $a
echo "Smaller number: " $b
