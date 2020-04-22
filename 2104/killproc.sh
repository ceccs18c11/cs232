#!/bin/bash
echo "Killing processes with greater than 50% CPU usage"
echo " "
read -n1 -r -p "Enter any key to continue..."
#removing the files used to store the processes being killed
rm process.txt
rm kill.txt
#storing the pid of the running processes
ps -o pid,user,%mem,command ax | sort -b -k3 -r >> process.txt
#excluding root processes and processes with less than 50% memory usage
awk '{if ($3 > 50 ) print $1}' < process.txt | grep -v "root" >> kill.txt
#Let the kill begin!
while read -r line
do 
	kill $line

done < kill.txt

