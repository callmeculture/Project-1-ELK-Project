#!/bin/bash
name='Jake'
echo "Hello $name"
echo -e "\nThis is in my script.\n"
echo -e "\nThe files in $PWD are: \n$(ls)"
echo -e "\nCopying the passwd file to your current directory.\n"
cp /etc/passwd $PWD
echo -e"The files in $pwd are now: \n$(ls)"
echo " "
echo "Have a great day!"
