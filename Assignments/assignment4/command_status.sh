#!/bin/bash
read -p "Enter command: " name
$name
status=$?
if [ $status -eq 0 ]
then
	echo "Command Execution Successful"
else
	echo "Command Execution Failed"
fi
