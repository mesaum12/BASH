echo "Enter the first date:"
read date1
echo "Enter the second date:"
read date2
date1modified="${date1:3:2}/${date1:0:2}/${date1:6:4}"
date2modified="${date2:3:2}/${date2:0:2}/${date2:6:4}"
var1=$(date -d  $date1modified +%u )
var2=$(date -d  $date2modified  +%u )

if [[ var1 -eq var2 ]]
  then
    echo "Both are born on the same day "
else
    echo "Both are not born on the same day "
fi 