#!/bin/bash
array[0]=23
array[1]=54
array[2]=76
array[3]=85
array[4]=46
array[5]=15
#unset array[2]
#echo ${array[@]}
array=( "${array[@]}" "11" )
#echo ${array[@]}
array=( "11" "${array[@]}" )
#echo ${array[@]}
array+=(33)
echo "All elements: "${array[@]}
#unset array[0]
echo "Total#: "${#array[@]}
echo "Index!: "${!array[@]}
unset array[0]
echo "Total after remove: "${#array[@]}
res=()
res=( ${res[@]} "22")
echo ${res[@]}


asc=()
while [ ${#array[@]} -gt 1 ]
do
    first=${array[0]}
    for i in ${array[@]}
    do
        if [ $i -lt $first ]
        then
            first="$i"
        fi
    done
    asc+=($first)
    for i in ${!array[@]}
    do
        if [ ${array[i]} -eq $first ]
        then
            index=$i
            break
        fi
    done
    unset array[$index]
done
echo "ARRAY: "${array[1]}
acc=( "${asc[@]}" "${array[@]}")
echo "Ascending: " ${asc[@]}
