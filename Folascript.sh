 #!/bin/bash
# ........My custom script to update new install LINUX VM........
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
printf "${YELOW}Installing qbittorrent\n${NC}"
sleep 5
apt-get install qbittorrent
printf "${YELOW}ALL APPLICATION HAS BEEN INSTALLED  YOU CAN CLOSE THE SCREEN @ Fola !!!!!\n${NC}"

