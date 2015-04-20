#!/bin/bash

if [ $# -ne 1 ]
then 
  echo "Usage: auto-sudo.sh addressOrIp"
else
  ssh_command="ssh $1 -l jacob -t 'sudo -u admin -i'"
  echo $ssh_command
  eval $ssh_command
  #ssh $1 -t 'sudo -u admin -i'
fi

