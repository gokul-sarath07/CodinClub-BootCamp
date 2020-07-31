#!/bin/bash
read -p "Enter a number: " num
echo "Units Place: "$(( $num%10 ))
echo "Tens Place: "$(( $(( $num/10 )) %10 ))
echo "Hundreds Place: "$(( $(( $num/100 )) %10 ))
echo "Thousands Place: "$(( $(( $num/1000 )) %10 ))
