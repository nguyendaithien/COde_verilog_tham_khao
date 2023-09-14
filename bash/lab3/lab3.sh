#!/bin/bash
if [ $# -ne 5 ]; then
  echo "Usage: $0 <input> <author> <coporation> <editor> <file_name> <coppy_right>"
  exit 1
fi
input="$1"
author="$2"
coporation="$3"
date=$(date)
editor="$4"
coppy_right="$5"
folder_path=$(pwd)
old_author="Author : "
old_coporation="Coporation : "
old_editor="Editor : "
old_filename="File : "
old_date="Create : "
old_coppyright="Copyright "
header_path="$folder_path/input/header"
code_path="$folder_path/input/verilog_code"
input_path="$folder_path/input"

# thay file header bang thong tin dau vao
cd "$input_path" || exit 1
sed -i "s/\($old_author\).*/\1 $author/" header
sed -i "s/\($old_coporation\).*/\1 $coporation/" header
sed -i "s/\($old_editor\).*/\1 $editor/" header
sed -i "s/\($old_date\).*/\1 $date/" header
sed -i "s/\($old_coppyright\).*/\1 $coppy_right/" header

#  ghep file header va file code *.v
cd "$code_path" || exit 1

	for file in *.v;
       	do
		echo "$file"
		cat "$header_path" "$file" >> temp_code_file.v
	        mv "temp_code_file.v" "$file" 	
		sed -i "s/\($old_filename\).*/\1 "$file"/" "$file"
	done
echo "$code_path"
