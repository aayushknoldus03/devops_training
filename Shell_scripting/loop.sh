#!/bin/bash

# This is for for and while loops

read -p "enter the start: " starting
read -p "enter the end: " end
read -p "enter the name of the folder: " folder

for (( i=$starting;i<=$end;i++ ));
do
	mkdir $folder$i
	
done

echo "folders created"

ls | grep -i $folder
