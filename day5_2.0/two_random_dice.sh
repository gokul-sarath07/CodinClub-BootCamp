#!/bin/bash
num1=$(( RANDOM%6+1 ))
num2=$(( RANDOM%6+1 ))
echo "Number 1: " $num1
echo "Number 2: " $num2
add=$(( $num1+$num2 ))
echo "Add: " $add
