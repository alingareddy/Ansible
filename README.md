# Ansible

This repository contains ansible playbooks to decommission hosts, delete hosts from cloudera manager, recommission hosts.

##.password.yml

Set sudo password in this file to run ansible playbook with sudo rights

##ansible_crontab.sh
Use this script to run a cronjob

##decommission.yml
This playbook executes decommission and delete_hosts roles on the "decommission" group of servers mentioned in /etc/hosts 

