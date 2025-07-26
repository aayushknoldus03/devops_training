#!/bin/bash

<< comment
	taking backup of download folder
comment

src_dir=$2
backup_dir=$1
timestamp=$(date '+%Y-%m-%d-%H-%M-%S')

#echo $timestamp

adding_src_backup(){
	echo " ./newbackup.sh should be having source file and backup file path "
}

if [ $# -eq 0 ]; then
	adding_src_backup
fi

taking_backup(){
	zip -r ${backup_dir}/$(basename "$src_dir")_${timestamp}.zip $src_dir > /dev/null
	if [ $? -eq 0 ]; then
	echo "backup taken from ${timestamp}"
	fi
}
taking_backup
