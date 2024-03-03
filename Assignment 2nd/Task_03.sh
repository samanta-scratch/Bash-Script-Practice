#!/bin/bash

#1st argument
file_or_dir=$1

#case statement
case "$file_or_dir" in
	-f)
		echo "It is a regular file."
		exit 0
		;;
	-d)	
       		echo "It is a directory."
		exit 1
		;;
	*)

		echo "It is some other type of file."
		exit 2
		;;
esac

