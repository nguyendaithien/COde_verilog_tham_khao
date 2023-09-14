#!/bin/bash

input_file="$1"
lab1_path=/home/cu_cai/bash/lab1/lab1.sh
while IFS= read -r line; do
	mkdir -p "$line"
	echo "create folder name: $line"
	folder_path=$(pwd)
	touch "$line/information"
	echo "create file information"
	echo "$folder_path"
	folder_size=$(du -sh $folder_path | cut -f1 )
	echo "$folder_size"
	echo "$folder_path ---- $folder_size" > "$line/information"
	# call scrips 1
	cd "$line" || exit 1
	source "$lab1_path"
	cd ..
done < "$input_file"	
