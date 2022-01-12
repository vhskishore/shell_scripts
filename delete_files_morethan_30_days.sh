#!/bin/bash
#Author Hema Siva Kishore
read -p "Enter Directory Path: " path
echo "Deleting files in ${path}"
find $path -mtime +90 -exec rm -type f {} \;
