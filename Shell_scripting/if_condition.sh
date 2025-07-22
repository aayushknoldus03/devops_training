#!/bin/bash

:<<'comment'
lets try this
comment

read -p "enter the game you are playing right now: " game

if [[ $game == "sekiro" ]];
then
	echo "its quite tough"
elif [[ $game == "black myth wukong" ]];
then
	echo "its little tough"
else
	echo "its not that tough"

fi
