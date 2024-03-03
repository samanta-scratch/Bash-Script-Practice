#!/bin/bash

#prompt for a file extension
echo "Enter a file extension: "
read file_ext

#prompt for a prefix
echo "Enter a file prefix: "
read prefix

current_date=$(date '+%Y-%m-%d')

#by default prefix is current date
prefix=${prefix:-$current_date}

#rename file based prefix and extension
for file in *.$file_ext; do
	new_name="${prefix}-${file}"
	echo "Renaming $file to $new_name."
	mv "$file" "$new_name"
done


