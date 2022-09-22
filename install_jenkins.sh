#!/bin/bash

sudo apt update -y
sudo apt install curl -y
sudo curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update -y
sudo apt install openjdk-11-jdk -y
sudo apt install jenkins -y
sudo service jenkins start
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt -y update
sudo apt install -y openjdk-11-jdk
sudo apt  install -y docker.io
mkdir /home/ubuntu/jenkins/
sudo chown ubuntu:ubuntu /home/ubuntu/jenkins
sudo chmod 666 /var/run/docker.sock
sudo usermod -a -G docker ubuntu
