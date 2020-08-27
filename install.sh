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
sudo apt-get install ffmpeg lxappearance youtube-dl omxplayer -y
pip3 install pyTelegramBotApi
pip3 install youtube-dl
git clone https://github.com/ducl1296/minimal-berry
cd minimal-berry
////////Instalacion de config
sudo mkdir /usr/share/slim/themes
sudo cp -r config/slim/darky_pink /usr/share/slim/themes/
sudo cp config/slim/slim.conf /etc/slim.conf
mkdir /home/"$USER"/.local/share/fonts
cp config/fonts/* /home/"$USER"/.local/share/fonts
mkdir /home/"$USER"/.config/scripts
cp config/scripts/* /home/"$USER"/.config/scripts/
cp -r config/* /home/"$USER"/.config/
