#!/bin/bash

# install required tools
sudo yum install -y git
sudo yum install -y ansible

# run ansible
ansible-pull -i local, \
  -U https://github.com/KavyaP1207/ansible-roboshop_roles-tf.git \
  -e component=mongodb \
  main.yaml