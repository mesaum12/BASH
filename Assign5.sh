#! /bin/bash

function my_rm()
{
   file=$1 #Read the filename from the terminal
   if [[ "$file" == "-c" ]]
    then
     echo "Delete All files?Y/N"
     read confirmation
     if [[ "$confirmation" == "Y" ]]
      then 
       cd my-deleted-files
       rm *
     fi
    
  
   
   else
   #Check if the directory exists, if not create it
   if [  ! -d "my-deleted-files" ]
   then
   mkdir my-deleted-files
   fi
   
   #move inside the directory 
   cd my-deleted-files
   #check for the existence of the file with the same name , if exists rename it to file1.txt
   if [[ -f "$file" ]]
   then 
   mv "$file" file0.txt
   
   #Again move one directory up and then change the name of the current file 
   cd ..
   mv "$file" file1.txt
   mv file1.txt my-deleted-files
   else 
   cd ..
   mv "$file" my-deleted-files
   fi
   fi
   
}


