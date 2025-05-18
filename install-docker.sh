#!/bin/bash

#check whether root user or not
R="\e[31m"
N="\e[0m"

sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
systemctl start docker
systemctl enable docker
usermod -aG docker ec2-user
echo -e "$R Logout and Login again $N"