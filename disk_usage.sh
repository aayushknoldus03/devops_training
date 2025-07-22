#!/bin/bash
critical=0
time_stamp=$(date '+%Y-%m-%d %H-%M-%S')
#df -h | awk 'NR>1 {print $1 " " $5}' | while read newoutput; # when using this, due to subshell critical value is remaining unchanged once existing the innerloop

while read -r newoutput; 
do
	# echo "disk usage : $newoutput"
	usage=$(echo $newoutput | awk '{print $2}' | cut -d'%' -f1)
	#echo $usage
	file_sys=$(echo $newoutput | awk '{print $1}')
	#echo $file_sys
	if [ $usage -ge 80 ];then
		echo "CRITICAL FOR FILE: $file_sys on $time_stamp"
		critical=1
	fi
	#echo "$critical"
done < <(df -h | awk 'NR>1 {print $1 " " $5}' | sort ) ## Use process substitution to avoid a subshell, 

<< must_read_subshell
The df -h | awk ... part runs in the parent shell.

But, the while read newoutput loop runs in a subshell, which means any changes to the variable critical inside the loop will not be visible outside the loop in the parent shell.

This is why critical is reset to 0 after the loop finishes because the loop was running in a subshell, and all changes to critical were local to that subshell.

must_read_subshell

#echo "$critical"
if [ $critical -eq 0 ]; then
   echo "All files are good"
fi

