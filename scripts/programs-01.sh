#!/usr/bin/env bash

# ------------------------------------------
# | Para instalar com o instalador 
# | $ bash instalador.sh
# | ou
# | $ chmod +x instalador.sh
# | $ ./instalador.sh
# | 
# | sudo apt-get install -y
# | echo "y" | sudo apt-get install snapd
# ------------------------------------------

# ------------------------------------------
# 1=vermelho; 2=verde; 3=amarelo; 4=azul; 5=roxo; 6=azul claro; 7=branco; 9=limpa
# tput setaf 1 - Mudar a cor FOREGROUND
# tput setab 1 - Mudar a cor BACKGROUND
# tput sgr0 - reset
# tput setaf 1; echo "this is red text"
# ------------------------------------------

# -------------------------------------------------------------------------------
tput setaf 3  ; echo "Instalacao via terminal - Aguarde" ; tput sgr0
# -------------------------------------------------------------------------------

# update
tput setaf 2  ; echo "Update" ; tput sgr0
sudo apt update
sudo apt upgrade -y

# install snap
tput setaf 2  ; echo "Snap" ; tput sgr0
sudo apt install snapd -y
source ~/.bashrc 

# install flatpak
tput setaf 2  ; echo "Flatpak" ; tput sgr0
sudo apt install flatpak -y
source ~/.bashrc 

# spotify
tput setaf 2  ; echo "Spotify" ; tput sgr0
sudo snap install spotify -y

# notion
tput setaf 2  ; echo "Notion" ; tput sgr0
sudo snap install notion-snap -y

# install gnome.Boxes
tput setaf 2  ; echo "gnome.Boxes" ; tput sgr0
flatpak install flathub org.gnome.Boxes -y

# git
tput setaf 2  ; echo "git" ; tput sgr0
sudo apt install git

# install VLC
tput setaf 2  ; echo "VLC" ; tput sgr0
sudo apt install vlc -y

# install transmition
tput setaf 2  ; echo "Transmition" ; tput sgr0
sudo apt-get install transmission -y

# scrypy
tput setaf 2  ; echo "Scrypy" ; tput sgr0
sudo apt install scrcpy -y

# gparted
tput setaf 2  ; echo "gparted" ; tput sgr0
sudo apt-get -y install gparted

# timeshift
tput setaf 2  ; echo "timeshift" ; tput sgr0
sudo apt-get -y install timeshift

# emote
tput setaf 2  ; echo "emote" ; tput sgr0
sudo snap install emote

# typora
tput setaf 2  ; echo "Typora" ; tput sgr0
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository 'deb https://typora.io/linux ./' -y
sudo apt update
sudo apt-get install typora -y

# install OBS
tput setaf 2  ; echo "OBS" ; tput sgr0
sudo add-apt-repository ppa:obsproject/obs-studio -y
sudo apt update
sudo apt-get install obs-studio -y

# wine
tput setaf 2  ; echo "Wine" ; tput sgr0
sudo dpkg --add-architecture i386 
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ impish main' -y
sudo apt update
sudo apt install --install-recommends winehq-stable -y

# update
tput setaf 2  ; echo "Update" ; tput sgr0
sudo apt update
sudo apt upgrade -y

# -------------------------------------------------------------------------------
tput setaf 3  ; echo "Instalacao Completa" ; tput sgr0
# -------------------------------------------------------------------------------

source ~/.bashrc 
exit 1
