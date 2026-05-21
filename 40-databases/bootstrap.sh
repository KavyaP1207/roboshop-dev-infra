#!/bin/bash

component=$1
dnf install ansible -y
ansible-pull -U https://github.com/KavyaP1207/ansible-roboshop_roles-tf.git -e component=$component main.yaml