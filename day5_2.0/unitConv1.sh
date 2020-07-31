#!/bin/bash
read -p "Enter how much inches: " inches
read -p "Enter feet x feet: " ft1 ft2
inToft=$(( $inches/12 ))
echo "$inches inches = $inToft feet"
aft1=$(( ft1/3 ))
aft2=$(( ft2/3 ))
echo "Rectangular plot of $ft1 x $ft2 feet in meters is $aft1 x $aft2 meters"
area=$(( $ft1 * $ft2 * 25 ))
acre=$(( $area/43560 ))
echo "Area of 25 $ft1 x $ft2 feet plot in acres is : $acre acres"
