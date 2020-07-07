#! /bin/bash

RED="\e[31m"
WHITE="\e[0m"
BLUE="\e[34m"

echo

echo -e "${WHITE}STEP 1: ${BLUE}Update Package List"
sudo yum update -y

echo

echo -e "${WHITE}STEP 2: ${BLUE}Upgrade Packages"
sudo yum upgrade -y 

echo

echo -e "${WHITE}STEP 3: ${BLUE}Remove Unneeded Packages"
sudo yum autoremove

echo

echo -e "${RED}Linux OS Must Be Upgraded Every 30 Days"

echo

sudo reboot

