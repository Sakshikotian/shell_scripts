#!/bin/bash


<<Note
This script will install any package passed as an argument
./install_package.sh <arg>
Note


echo "****************INSTALLING $1*****************"

sudo apt-get update
sudo apt-get install $1 -y

sudo systemctl start $1
sudo systemctl enable $1

echo "****************INSTALLED $1******************"
