#!/bin/bash

<< readme 
this is a script with 5 day rotatation

usage:	./backup.sh <path to your source> <path to backup folder>
readme

src_dir=$2
backup_dir=$1
time_stamp=$(date '+%Y-%m-%d-%H-%M-%S')

display_usage(){
	echo "Useage: ./backup.sh <path to your source> <path to backup folder>"

}
if [ $# -eq 0 ];then
	display_usage
fi
take_backup(){
	zip -r $backup_dir/backup_$time_stamp.zip $src_dir > /dev/null

	if [ $? -eq 0 ]; then
        echo "backup taken for $time_stamp"
	fi	
}
rotation(){
	backups=($(ls -t "$backup_dir/backup_"*.zip 2>/dev/null))
	#echo "$backups[@]"

	if [ "${#backups[@]}" -gt 5 ];then
		echo "rotation done for 5 days"

		backups_to_remove=("${backups[@]:5}")

		for backup in "${backups_to_remove[@]}";
		do 
			rm -f $backup
		done
	ls backup
	fi
}
take_backup
rotation

