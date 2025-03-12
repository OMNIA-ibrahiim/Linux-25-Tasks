#!/bin/bash

echo "Please Enter The Number of Your Role"

echo "1: Admin"
echo "2: Editor"
echo "3: Viewer"

read choice

if [[ "$choice" == "1" ]]
 then
   echo "Welcome, Admin! You have full access."

elif [[ "$choice" == "2" ]]
 then
   echo "Welcome, Editor! You can edit content."

elif [[ "$choice" == "3" ]]
 then
   echo "Welcome, Viewer! You can only view content."

else
 echo "Invalid role. Please enter 1: Admin, 2: Editor, or 3: Viewer."
fi
