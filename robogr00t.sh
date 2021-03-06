#!/bin/bash

# VARIABLES 

# color const

RED='\033[0;31m'
BLACK='\033[0;30m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT_GRAY='\033[0;37m'
DARK_GRAY='\033[1;30m'
YELLOW='\033[1;33m'
WHITE='\033[1;37m'

clear

echo -e "${GREEN}"
echo "                                           "
echo " _____     _       _____ _____ ___ ___ _   "
echo "| __  |___| |_ ___|   __| __  |   |   | |_ "
echo "|    -| . | . | . |  |  |    -| | | | |  _|"
echo "|__|__|___|___|___|_____|__|__|___|___|_|  "
echo "                                           "
echo -e "${LIGHT_GRAY}========= COMPLETE DESKTOP SETUP =========="

echo -e "${YELLOW}"
echo "[+] UPDATING THE SYSTEM"
sudo apt-get update >> log.txt
echo "[+] INSTALLING VIM ..."
sudo apt-get install vim -y >> log.txt
echo "[+] INSTALLING GIT ..."
sudo apt-get install git -y >> log.txt
echo "[+] INSTALLING CURL ..."
sudo apt-get install curl -y >> log.txt
echo -e "[+] INSTALLING SNAP ...${RED}"
sudo apt-get install snapd -y >> log.txt
echo -e "${YELLOW}[+] INSTALLING VSCODE ...${RED}" 
sudo snap install code --classic >> log.txt
echo -e "${YELLOW}[+] INSTALLING GIMP ...${RED}"
sudo apt-get install gimp -y >> log.txt

echo -e "${YELLOW}[+] INSTALLING BRAVE DEPENTENCIES ... ${RED}"
sudo apt-get install apt-transport-https  -y >> log.txt
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg >> log.txt
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list >> log.txt
sudo apt-get update >> log.txt
echo -e "${YELLOW}[+] INSTALLING BRAVE ... ${RED}"
sudo apt-get install brave-browser -y >> log.txt
echo -e "${YELLOW}[+] INSTALLING CHEESE ${RED}"
sudo apt-get install cheese  -y >> log.txt
echo -e "${YELLOW}[+] INSTALLING LIBRE OFFICE ESSENTIALS ...${RED}"
sudo apt install libreoffice-writer libreoffice-calc libreoffice-impress >> log.txt


echo -e "${LIGHT_GRAY}============= SYSTEM IS READY =============\n"
