#!/bin/bash
#NOTE AFTER DOWNLOADING THE SCRIPT MAKE IT EXECUTABLE BY RUNING COMMAND  [ chmod +x Folascript.sh  then run script   with sudo  ./Folascript.sh ]
printf "${YELOW}
.......Custom script to update, upgrade and install all applications on a fresh installed debian.......

.....APPS THAT WILL BE INSTALL.....

#SSH

#WINE

#PLAY ON LINUX

#REMOTE DESKTOP XRDP

#TORRENT APP

#VIRTUALBOX

#TELEGRAM

#CHROMIUM BROWSER

#ANSIBLE
\n${NC}"
sleep 6
# ........My custom script to update, upgrade and install all applications on a new install LINUX debian.......
#COLOR scheme YELOW
YELOW='\033[1;33m'
NC='\033[0m' # No Color
printf "${YELOW}Please wait while we get things ready........\n${NC}"
sleep 5
#updating linux
printf "${YELOW}updating OS......\n${NC}"
sleep 5
apt-get update
#upgrading linux
printf "${YELOW}upgrading OS......\n${NC}"
sleep 5
apt-get upgrade -y
#Intall wine for linux
printf "${YELOW}Installing wine.........\n${NC}"
sleep 5
apt-get install wine -y
#Install SSH
printf "${YELOW}Installing ssh.........\n${NC}"
sleep 5
apt-get install ssh -y
#Install play on linux
printf "${YELOW}Installing playonlinux......\n${NC}"
sleep 5
apt-get install playonlinux -y
#Installing XRDP
printf "${YELOW}Installing remote Desktop\n${NC}"
sleep 5
apt-get install xrdp -y
#Installing qbittorrent
printf "${YELOW}Installing qbittorrent..\n${NC}"
sleep 5
apt-get install qbittorrent -y
#install virtual box
printf "${YELOW}Installing virtualbox.....\n${NC}"
sleep 5
apt install virtualbox -y
#install Telegram
printf "${YELOW}Installing Telegram Desktop.....\n${NC}"
sleep 5
apt install telegram-desktop -y
#install chromium
printf "${YELOW}Installing Chromium......\n${NC}"
sleep 5
apt install chromium-browser -y
#Install Ansible
printf "${YELOW}Installing Ansible latest....\n${NC}"
sleep 5
apt install ansible -y
#Install Brave browser
printf "${YELOW}Installing Brave browser....\n${NC}"
sleep 5
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y
printf "${YELOW}Installing Uget downloader accelerator....\n${NC}"
sudo apt install uget -y
printf "${YELOW}ALL APPLICATION HAS BEEN INSTALLED  
YOU CAN CLOSE THE SCREEN @ Fola | copyright 2022 \n${NC}"

