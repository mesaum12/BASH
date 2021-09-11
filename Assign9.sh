echo "Enter the first pattern"
read pattern1
echo "Enter the second pattern "
read pattern2
echo "--We need to replace the first pattern occurring in the file with the second pattern--"
echo -n "Enter the name of the file :"
read filename
number_of_words=`grep -o $pattern1 $filename | wc -w`
if [ $number_of_words -eq 0 ]
then 
  echo "No such word found in the file" 
else 
   sed -i "s/$pattern1/$pattern2/" $filename
fi
