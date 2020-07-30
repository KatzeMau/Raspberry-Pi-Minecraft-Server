#!/bin/sh
# Check if root
if [ "$(whoami)" != "root" ]; then
  whiptail --msgbox "Sorry you are not root. You must type: sudo sh install.sh" $WT_HEIGHT $WT_WIDTH
  exit
fi
apt update
apt upgrade -y 
apt search openjdk
apt install openjdk-9-jdk-headless screen -y 
apt install screen -y
whiptail --msgbox "Now Go to read.me and edit rc.local" $WT_HEIGHT $WT_WIDTH
  exit

