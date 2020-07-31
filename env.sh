#!/bin/bash
if [ -z $usersecret ]
then
	export usersecret="dH34xJaa23"
	env | grep usersecret
else
	echo "usersecret is not empty"
	echo $usersecret
fi
