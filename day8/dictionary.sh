#!/bin/bash

declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Dog Sound: " ${sounds[dog]}
echo "All the values: " ${sounds[@]}
echo "Animals: "${!sounds[@]}
echo "Number of animals: "${#sounds[@]}
unset sounds[dog]
echo ${!sounds[@]}

for values in $sounds
do
	echo $values
done
