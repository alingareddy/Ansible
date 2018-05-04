#!/bin/bash
d=$(date +%Y-%m-%d)
echo $d

sudo_password=`cat /home/alinga119/Ansible/.password.yml`
script_path="/home/alinga119/Ansible/decommission.yml"
log_path="/home/alinga119/Ansible/logs"

echo $sudo_password
echo $script_path
echo $log_path

#ansible --version
ansible-playbook $script_path --extra-vars "ansible_sudo_pass=$sudo_password" >> $log_path/decommission_$d.log
