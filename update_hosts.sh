#!bin/bash

grp=$(grep -n "#####AmazonHosts#####" ~/.ssh/config | awk -F ":" '{print $1}')
if [[ ! -z $grp ]]; then
	sed  "$grp,$ d" ~/.ssh/config > ~/.ssh/config.tmp
	mv -f ~/.ssh/config.tmp ~/.ssh/config
fi
ec2-host | awk 'BEGIN{print "#####AmazonHosts#####\n##### No Manual Entries from here#####"}{print "Host " $1;print " HostName "$2;print " IdentityFile ~/.ssh/totango.pem";print " User ubuntu"}' >> ~/.ssh/config
chmod 400 ~/.ssh/config
cat ~/.ssh/config

