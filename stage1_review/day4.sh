#!/bin/bash -x
for item in `ls *.java`;
do 
   fileName=` echo $item | awk -F.'{print $1}'`;
   if [ -d $fileName ];
   then 
       rm -R $fileName;
   fi
       mkdir $fileName;
       cp $item $fileName;
done