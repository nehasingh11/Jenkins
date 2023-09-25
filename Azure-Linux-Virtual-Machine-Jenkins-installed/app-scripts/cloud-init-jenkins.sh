#!/bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt install -y openjdk-17-jdk 
sudo apt install -y openjdk-17-jre 
sudo apt-get install git-all -y
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo 'deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/' | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update && sudo apt-get install jenkins -y
sudo service jenkins restart
sudo apt-get install python3 -y
