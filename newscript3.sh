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

# spotify
tput setaf 2  ; echo "Spotify" ; tput sgr0
sudo snap install spotify -y

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

# -------------------------------------------------------------------------------
tput setaf 3  ; echo "Instalacao via pacotes - Aguarde" ; tput sgr0
# -------------------------------------------------------------------------------

# code
tput setaf 2  ; echo "VScode" ; tput sgr0
sudo apt install ./linux-programs/code_1.64.2-1644445741_amd64.deb -y
sudo wget https://raw.githubusercontent.com/mhsattarian/nemo-open-in-vscode/master/vscode.nemo_action -O ~/.local/share/nemo/actions/vscode.nemo_action

# gitkraken
tput setaf 2  ; echo "Gitkraken" ; tput sgr0
sudo apt install ./linux-programs/gitkraken-amd64.deb -y

# steam
tput setaf 2  ; echo "Steam" ; tput sgr0
sudo apt install ./linux-programs/steam_latest.deb -y

# chrome
tput setaf 2  ; echo "Chrome" ; tput sgr0
sudo apt install ./linux-programs/google-chrome-stable_current_amd64.deb -y

# Edge
tput setaf 2  ; echo "Edge" ; tput sgr0
sudo apt install ./linux-programs/microsoft-edge-stable_98.0.1108.50-1_amd64.deb -y

# insync
tput setaf 2  ; echo "Insync" ; tput sgr0
sudo apt install ./linux-programs/insync_3.7.1.50307-impish_amd64.deb -y

# install stremio 
tput setaf 2  ; echo "Stremio" ; tput sgr0
wget http://mirrors.kernel.org/ubuntu/pool/multiverse/f/fdk-aac/libfdk-aac1_0.1.6-1_amd64.deb
sudo apt install ./libfdk-aac1_*_amd64.deb -y
sudo apt install ./linux-programs/stremio*amd64.deb -y
sudo apt --fix-broken install

# teams
tput setaf 2  ; echo "Teams" ; tput sgr0
sudo apt install ./linux-programs/teams_1.4.00.26453_amd64.deb -y

# -------------------------------------------------------------------------------
tput setaf 3  ; echo "Desktop Configurations Bugdie" ; tput sgr0
# -------------------------------------------------------------------------------

# sudo apt install dconf*
# dconf dump / > /extras/full-backup
# dconf load / < /extras/full-backup

# -------------------------------------------------------------------------------
tput setaf 3  ; echo "Ultimos updates - Aguarde" ; tput sgr0
# -------------------------------------------------------------------------------

# update
tput setaf 2  ; echo "Update" ; tput sgr0
sudo apt update
sudo apt upgrade -y

# -------------------------------------------------------------------------------
tput setaf 3  ; echo "Instalacao Completa" ; tput sgr0
# -------------------------------------------------------------------------------

source ~/.bashrc 
exit 1
