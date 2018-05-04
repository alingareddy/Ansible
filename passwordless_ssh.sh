#!/bin/bash
host="$1"
password=`cat /home/alinga119/Ansible/.password.yml`
sshpass -p $password ssh alinga119@$host mkdir -p ~/.ssh
cat ~/.ssh/id_rsa.pub | sshpass -p $password ssh alinga119@$host 'cat >> ~/.ssh/authorized_keys'
ssh alinga119@$host 'chmod 600 ~/.ssh/authorized_keys'
