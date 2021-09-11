#! /bin/bash

var=$1
echo "$var"
echo "Printing the multiplication table for $1"

echo -n  "Read the range till which table is to be printed:"
read range

i=1
while [ $i -le $range ]
do
  echo "$var*$i=$(( $var * $i )) "
  i=$(( $i + 1))
done
