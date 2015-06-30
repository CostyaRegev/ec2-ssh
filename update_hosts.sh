#!/bin/bash

echo -e "\033[1m [?] Please Enter your ssh Username...?  \033[0m"
read username
echo -e "\033[1m [?] Please Enter your ssh IdentityFile path...?  \033[0m"
read path

if [ -z $username ] || [ -z $path ]
then
		echo -e "\033[31;1m [Error] You did not supplied [Username] || [Path] \033[0m"
		exit 1
fi

grp=$(grep -n "#####AmazonHosts#####" ~/.ssh/config | awk -F ":" '{print $1}')
if [[ ! -z $grp ]]; then
	sed  "$grp,$ d" ~/.ssh/config > ~/.ssh/config.tmp
	mv -f ~/.ssh/config.tmp ~/.ssh/config
fi
ec2-host | awk -v path=$path  -v username=$username 'BEGIN{print "#####AmazonHosts#####\n##### No Manual Entries from here#####"}{print "Host " $1;print " HostName "$2;print " IdentityFile " path;print " User " username}' >> ~/.ssh/config
chmod 755 ~/.ssh/config
cat ~/.ssh/config

