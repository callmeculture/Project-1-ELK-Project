#!/bin/bash

$output=$HOME/research/sys_info.txt
if [ ! -d $HOME/research ]
then
mkdir $HOME/research
fi
echo "A Quick System Audit Script" >> $output
date >> $output
echo "" >> $output
echo "Machine Type Info:" >> $output
echo -e "$MATCHTYPE \n" >> $output
echo -e "Uname info: $(uname -a) \n" >> $output
ip=$(ip addr | head -9 | tail -1)
echo $ip
echo "Hostname: $(hostname -s) " >> $output
echo -e "\n777 Files:" >> $output
echo -e "\nTop 10 Processes" >> $output
ps aux -m | awk {'print $1, $2, $3, $4, $11'} | head >> $output

files=('/etc/passwd' '/etc/shadow')
for file in ${files[@]}
	do
ls -l $file >> $output
	done

