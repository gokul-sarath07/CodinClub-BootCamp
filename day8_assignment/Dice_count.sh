#!/bin/bash
declare -A dict
function dice_count {
    case $1 in
        1)
            dic_1=$(( $dic_1 + 1 ))
            ;;
        2)
            dic_2=$(( $dic_2 + 1 ))
            ;;
        3)
            dic_3=$(( $dic_3 + 1 ))
            ;;
        4)
            dic_4=$(( $dic_4 + 1 ))
            ;;
        5)
            dic_5=$(( $dic_5 + 1 ))
            ;;
        6)
            dic_6=$(( $dic_6 + 1 ))
            ;;
    esac
}
while [[ $dic_1 -lt 10 && $dic_2 -lt 10 && $dic_3 -lt 10 && $dic_4 -lt 10 && $dic_5 -lt 10 && $dic_6 -lt 10 ]]
do
	dice=$(( RANDOM%6 + 1 ))
	dict["dic_$i"]=$dice
	dice_count $dice
	((i++))
done
echo "One: $dic_1, Two: $dic_2, Three: $dic_3, Four: $dic_4, Five: $dic_5, Six: $dic_6"
arr=( $dic_1 $dic_2 $dic_3 $dic_4 $dic_5 $dic_6 )
min=$(printf '%s\n' "${dict[@]}" | sort | uniq -c | sort | head -1)
max=$(printf '%s\n' "${dict[@]}" | sort | uniq -c | sort | tail -1)
echo "Minimum Times: "$min
echo "Maximum Times: "$max
