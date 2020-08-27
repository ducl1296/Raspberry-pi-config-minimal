#!/bin/bash
/bin/echo -e "\e[1;31mIniciara el proceso de instalacion\e[0m"
read -p "Quieres installar minimali3 en raspberry? (y/n)" instalar
case $instalar in
  y ) break;;
  n ) exit;;
esac
done
sudo apt-get update && sudo apt-get upgrade -y
mkdir .config
sudo apt-get install xorg xserver-xorg-video-fbturbo lightdm i3 rofi ccrypt clipit git python3-pip proftpd lxpanel feh compton unzip xpdf git ccrypt nemo python3-pip -y
sudo apt-get install ffmpeg lxappearance yotube-dl -y
pip3 install pyTelegramBotApi
pip3 install youtube-dl
