#!/bin/bash
/bin/echo -e "\e[1;31mIniciara el proceso de instalacion\e[0m"
read -p "Quieres installar minimali3 en raspberry? (y/n)" instalar
case $instalar in
  y ) break;;
  n ) exit;;
esac
done
sudo apt-get update && sudo apt-get upgrade
cd ~/
mkdir .config
sudo apt-get install xorg xserver-xorg-video-fbturbo lightdm i3 rofi ccrypt clipit git -y
read -p "Quieres instalar el lcd? (y/n)" lcd
case $lcd in
  y ) break;;
  n ) /bin/echo -e "\e[1;31mHe terminado\e[0m"
 exit;;
esac