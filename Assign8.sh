#! /bin/bash

echo "Enter the filename"
read filename
echo "Enter the word to be searched inside the file '$filename'"
read string
number_of_words=`grep -o $string $filename | wc -w`
if [ $number_of_words -eq 0 ]
then 
echo "No such word found in the file"
else
echo "Number of times $string is present is :$number_of_words"
fi

