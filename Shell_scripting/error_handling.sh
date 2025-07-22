#!/bin/bash

create_directory(){
	mkdir demo
}

if ! create_directory ; then
	echo "code is exiting as it already exists"
	exit 1
fi

echo "directory is created"
