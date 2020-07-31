#!/bin/bash
read -p "Enter folder name to search: " name
if [ -d $name ]
then
	echo "Folder already exists"
else
	mkdir $name
fi
