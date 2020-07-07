#! /bin/bash

RED="\e[31m"
WHITE="\e[0m"
BLUE="\e[34m"

echo

echo -e "${RED}step 1: ${BLUE}update package list"
sudo apt update

echo

echo -e "${RED}step 2: ${BLUE}fix broken dependencies"
sudo dpkg --configure -a

echo

echo -e "${RED}step 3: ${BLUE}fix broken packages" 
sudo apt --fix-broken install -y

echo

echo -e "${RED}step 4: ${BLUE}fix broken packages"
sudo apt autoremove -y

echo

echo -e "${RED}step 5: ${BLUE}upgrade packages"
sudo apt upgrade -y

echo

echo -e "${RED}Updates Complete"

echo
