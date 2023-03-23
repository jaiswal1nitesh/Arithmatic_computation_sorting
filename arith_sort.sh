#!/bin/bash -x
echo "Enter the three Number"
echo
read -p "Enter the First number  ---> " a
read -p "Enter the Second number ---> " b
read -p "Enter the third number  ---> " c
let uc1=a+b*c
let uc2=a*b+c
let uc3=c+a/b
let uc4=a%b+c
echo " uc1=$uc1  uc2=$uc2  uc3=$uc3  uc4=$uc4"
declare -A dict
dict[1]=$uc1
dict[2]=$uc2
dict[3]=$uc3
dict[4]=$uc4
echo " Computation store in dict ${dict[@]} "
# Data store in the array
for ((j=1,i=0; i<${#dict[@]}; i++,j++))
do
	arr[$i]=${dict[$j]}
done
echo " Computation store in array ${arr[@]} "
# Sorting Array
for (( i=0; i<4; i++))
do
	for(( j=$i+1; j<4; j++))
	do
	   if  [ ${arr[$i]} -lt ${arr[$j]} ]
	   then
		temp=${arr[$i]}
		arr[$i]=${arr[$j]}
		arr[$j]=$temp
	   fi
	done
done 
echo " DEcending order ${arr[@]} "

