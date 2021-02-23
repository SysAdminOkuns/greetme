#! /bin/bash


#_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _

#   Author: Nosa Okundaye, 
#   Date: 11/02/2021

#  Description: The purpose of this script 
#  is to greet everybody
#  it comes across!
#

# _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ __ _ _ _ _ _ _ _ 

# Version: 1.0.0
#
# Special Instructions: 

# Declared Variables:
  
# _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ __ _ _ _ _

# Script Body

clear >$(tty)
echo -e "\e[1;32m Hello \e[0m" $USER | pv -qL 5
sleep 2
clear >$(tty)

echo -e "\e[1;32m What is today? \e[0m" | pv -qL 5
sleep 0.5
echo $(date +%Y_%m_%d) | pv -qL 5
sleep 2
clear >$(tty)

echo -e "\e[1;32m Show me Julian Calendar, Please... \e[0m" | pv -qL 5
cal -j3 | pv -qL 50
sleep 2
clear >$(tty)

echo -e "\e[1;32m What is the name of this computer? \e[0m" | pv -qL 10
echo $(hostname) | pv -qL 10
sleep 2
clear >$(tty)

echo -e "\e[1;32m What is the virtual memory? \e[0m" | pv -qL 10
RAM=`free | grep ^Mem | awk '{print $2}'` ; 
SWAP=`free | grep ^Swap | awk '{print $2}'` ;
echo "RAM = $RAM and SWAP= $SWAP" | pv -qL 10 ; 
echo "The total virtual memory is $(($RAM+$SWAP))" | pv -qL 10 ; 
clear >$(tty)

echo -e "\e[1;32m Print the name and release of OS. \e[0m" | pv -qL 10
uname -mor | pv -qL 10
sleep 2
clear >$(tty)

echo -e "\e[1;32m Please, list all the files and folders in the current directory. \e[0m" | pv -qL 10
ls -lah | pv -qL 30
sleep 2
clear >$(tty)

echo -e "\e[1;32m Please, list all the running processes. \e[0m" | pv -qL 10
ps -aux | grep root | pv -qL 1000
sleep 5
clear >$(tty)

echo -e "\e[1;32m What is the TERM environment variable? \e[0m" | pv -qL 10
printf $TERM | pv -qL 10
sleep 2
clear >$(tty)

echo -e "\e[1;32m What is the PATH environment variable? \e[0m" | pv -qL 10
printf $PATH | pv -qL 10
sleep 2
clear >$(tty)

echo -e "\e[1;32m What is the HOME environment variable? \e[0m" | pv -qL 10
printf $HOME | pv -qL 10
sleep 2
clear >$(tty)

echo -e "\e[1;32m What is the disk usage? \e[0m" | pv -qL 10
du -hs 
sleep 2
clear >$(tty)

echo -e "\e[1;32m What is my group id? \e[0m" | pv -qL 10
id -g | pv -qL 10
sleep 2
clear >$(tty)

echo -e "\e[1;32m Please couldn't you loan me \$50.00? \e[0m" | pv -qL 10
echo -e "\e[1;36m Well, let me think about it... \e[0m" | pv -qL 10
clear >$(tty)
echo -e "\e[1;32m The word of the day is JOB!!! \e[0m" | pv -qL 10
echo -e "\e[1;32m Go get a JOB, sorry. \e[0m" | pv -qL 10
sleep 2
clear >$(tty)
echo -e "\e[1;33m --- Good bye , and the current time is $(date +%H) hrs --- \e[0m"

sl

sleep 5
clear >$(tty)
