#!/bin/bash
function HeadorTail {
	case $1 in
	1) (( heads++ )) ;;
	0) (( tails++ )) ;;
	esac
}
while [[ $heads -lt 11 && $tails -lt 11 ]]
do
	HeadorTail $(( RANDOM%2 ))
done
if [[ $heads -gt $tails ]]
then
	echo "Head Wins! Head: $heads, Tail: $tails"
elif [[ $heads -lt $tails ]]
then
	echo "Tail Wins! Tail: $tails, Head: $heads"
fi
