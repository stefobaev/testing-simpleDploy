#!/bin/bash

sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt -y update
sudo apt install -y openjdk-11-jdk
sudo apt  install -y docker.io
mkdir /home/ubuntu/jenkins/
sudo chown ubuntu:ubuntu /home/ubuntu/jenkins
sudo chmod 666 /var/run/docker.sock
sudo usermod -a -G docker ubuntu
