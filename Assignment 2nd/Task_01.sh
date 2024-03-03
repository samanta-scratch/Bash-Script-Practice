#!/bin/bash

# store current date
current_date=$(date '+%Y-%m-%d')

# all files in current directory with .txt files with discarding error message
txt_files=$(ls *.txt 2>/dev/null)

# apply if condition
if [ -z "$txt_files" ]; then
	echo "No txt files found in the current directory"
else
	for file in *.txt; do
		new_name="${current_date}-${file}"
		mv "$file" "$new_name"
		echo "Renaming $file to $new_name"
	done
fi

