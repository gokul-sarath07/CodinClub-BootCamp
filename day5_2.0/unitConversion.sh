#!/bin/bash
read -p "Enter a value-UnitToConvert: " valuni
value=`echo $valuni | awk -F- '{print $1}'`
unit=`echo $valuni | awk -F- '{print $2}'`
case $unit in
	ftTOin)
		v=$(( $value * 12 ))
		echo "Feet to inches: " $v
		;;
	ftTOm)
		v=$(( $value / 3 ))
		echo "Feet to meters: " $v
		;;
	inTOft)
		v=$(( $value / 12 ))
		echo "Inch to Feet: " $v
		;;
	mTOft)
		v=$(( $value * 3 ))
		echo "Meter to Feet: " $v
		;;
esac
