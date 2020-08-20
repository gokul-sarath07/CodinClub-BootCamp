#!/bin/bash
i=0
declare -A month
while [[ $i -lt 50 ]]
do
	check=$(( $((RANDOM%12)) + 1 ))
	if [[ $check -eq 1 ]]
	then
		month[$i]="January"
	elif [[ $check -eq 2 ]]
	then
		month[$i]="February"
	elif [[ $check -eq 3 ]]
    then
        month[$i]="March"
	elif [[ $check -eq 4 ]]
    then
        month[$i]="April"
	elif [[ $check -eq 5 ]]
    then
        month[$i]="May"
	elif [[ $check -eq 6 ]]
    then
        month[$i]="June"
	elif [[ $check -eq 7 ]]
    then
        month[$i]="July"
	elif [[ $check -eq 8 ]]
    then
        month[$i]="August"
	elif [[ $check -eq 9 ]]
    then
        month[$i]="September"
	elif [[ $check -eq 10 ]]
    then
        month[$i]="October"
	elif [[ $check -eq 11 ]]
    then
        month[$i]="November"
	else
		month[$i]="December"
	fi
	((i++))
done
printf '%s\n' "${month[@]}" | sort | uniq -c | sort -nr
