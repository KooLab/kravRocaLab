#!/usr/bin/env bash
#version:0.0.0.2  util en KDE5 plasma
#mar sep 10 18:19:08 MDT 2019
#asignas a variable
PASS=$1
PASSR=$2

for ip_offline in NameHost.io 127.0.0.1
do

konsole --hold --new-tab -e $SHELL -c "echo $PASSR ;  sshpass -p $PASS ssh -o StrictHostKeyChecking=no sysadmin@$ip_offline" &
done
wait
