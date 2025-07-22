#!/bin/bash

read -p "enter num: " num

while [[ $num -ge 0 ]]
do
	if [[ $(( num % 2 )) == 0 ]];
	then
		echo "$num"
	
	fi
	num=$((num - 2))
	
done
