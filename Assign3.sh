#! /bin/bash

echo "Enter the name of the file"
read filename

if [[ -f "$filename" ]]
then
  NumberOfLines=`wc --lines < $filename`
  echo "The number of lines in $filename are :$NumberOfLines"
else 
  echo "File doesn't exist"
fi



