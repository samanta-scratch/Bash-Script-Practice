#!/bin/bash

# store different hostname to different variable
HOST1="google.com"
HOST2="amazon.com"
HOST3="amazon.com.bangladesh"


# check exit staus of ping command for google.com
ping -c 1 $HOST1

if [ "$?" -eq "0" ];
then
	echo "$HOST1 is reachable."
else
	echo "Unable to reach $HOST1."
fi


# check exit staus of ping command for amazon.com
ping -c 1 -w 1 $HOST2

if [ "$?" -eq "0" ];
then
	echo "$HOST2 is reachable."
else
	echo "Unable to reach $HOST2."
fi


# check exit status of ping command for non-existing domain
ping -c 1 $HOST3

if [ "$?" -eq "0" ];
then
	echo "$HOST3 is reachable."
else
	echo "Unable to reach $HOST3."
fi

