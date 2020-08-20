#!/bin/bash
read -p "Enter a number: " num
function palindrome {
    temp=$num
    sum=0
    while [ $num -gt 0 ]
    do
        last=$(( $num%10 ))
        sum=$(( $(( $sum * 10 )) + $last ))
        num=$(( $num/10 ))
    done
    if [[ $sum -eq $temp ]]
    then
        echo "$sum and $temp are Palindrome"
    else
        echo "$sum and $temp are Not Palindrome"
    fi
}
palindrome $num
