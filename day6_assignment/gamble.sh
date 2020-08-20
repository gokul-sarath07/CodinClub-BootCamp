#!/bin/bash
win=0
loss=0
bet=100
while [[ $bet -gt 0 && $bet -lt 200 ]]
do
	check=$(( RANDOM%2 ))
	if [[ $check -eq 1 ]]
	then
		(( win++ ))
	else
		(( loss++ ))
		(( bet-- ))
	fi
done
echo "Win: "$win
echo "Loss: "$loss
echo "Money Left: "$bet
