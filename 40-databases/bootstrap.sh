#!/bin/bash

component=$1
dnf install ansible -y
#ansible-pull -U https://github.com/KavyaP1207/ansible-roboshop_roles-tf.git -e component=$component main.yaml

REPO_URL=https://github.com/KavyaP1207/ansible-roboshop_roles-tf.git
REPO_DIR=/opt/roboshop/ansible
ANSIBLE_DIR=ansible-roboshop_roles-tf

mkdir -p $REPO_DIR
mkdir -p /var/log/roboshop/
touch ansible.log

cd $REPO_DIR

if [ -d $ANSIBLE_DIR ]; then
    cd $ANSIBLE_DIR 
    git pull
else
    git clone $REPO_URL
    cd $ANSIBLE_DIR
fi

ansible-playbook -e component= $component main.yaml