#!/bin/bash -x
read -p "Enter your two numbers to add: " x y
z=$(( $x + $y ))
echo $z
