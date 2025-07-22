#!/bin/bash

:<<'comment'
lets try this
comment

function is_tough(){
read -p "enter the $1 game you are playing right now: " game

if [[ $game == "sekiro" ]];
then
	echo "its quite tough"
elif [[ $game == "black myth wukong" ]];
then
	echo "its little tough"
else
	echo "its not that tough"

fi
}

is_tough "ps5"
