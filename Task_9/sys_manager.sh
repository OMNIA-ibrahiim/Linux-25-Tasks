#!/bin/bash

echo -e "========== Linux System Manager ==========
        \n1. Show System Information
        \n2. Check File Permissions
        \n3. Change File Permissions
        \n4. Compress a File/Directory
        \n5. Decompress a File
        \n6. Exit
        \n=========================================="

read -p "Enter your choice: " choice

if [[ "$choice" == "1" ]]; then
 echo "Current user: $(whoami)"

elif [[ "$choice" == "2" ]]; then
 read -p "Enter the file name: " fname
 if [[ -e "$fname" ]]; then
  echo "Permissions for $fname : $(ls -l "$fname")"
 else
  echo "File does not exist"
 fi

elif [[ "$choice" == "3" ]]; then
 read -p "Enter file name: " fname
 read -p "Enter new permission: " per
 if [[ -e "$fname" ]]; then
  chmod "$per" "$fname"
  echo "Permissions changed successfully."
 else
  echo "File does not exist"
 fi

elif [[ "$choice" == "4" ]]; then
 read -p "Enter file/directory name: " name
 if [[ -e "$name" ]]; then 
  echo -e "Choose compression type: 
          \n1. tar.gz
          \n2. zip"
  read -p "Enter type: " type
  if [[ "$type" == "1" ]]; then
   tar -czvf "$name".tar.gz "$name.tar.gz is created"
   echo "Compression successful"
  elif [[ "$type" == "2" ]]; then
   zip -r "$name".zip "$name"
   echo "Compression successful: $name.zip is created"
  else
   echo "Sorry, not an option try again"
  fi
 else
 echo "File or directory does not exist"
 fi

elif [[ "$choice" == "5" ]]; then
    read -p "Enter the compressed file name: " filename

    if [[ -e "$filename" ]]; then
        if [[ "$filename" == *.tar.gz ]]; then
            tar -xzvf "$filename"
            echo "Extracted $filename successfully."
        elif [[ "$filename" == *.zip ]]; then
            unzip "$filename"
            echo "Extracted $filename successfully."
        else
            echo "Unsupported file format. Only .tar.gz and .zip are supported."
        fi
    else
        echo "File does not exist."
    fi


elif [[ "$choice" == "6" ]]; then 
 echo "Exiting the system manager. Goodbye!"

else
 echo "Sorry, not an option try again"

fi

