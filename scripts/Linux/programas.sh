#!/usr/bin/env bash

# @@@ COMMAND INSTALL @@@

# update
sudo apt update
sudo apt upgrade -y

# git
sudo apt install git -y

# snap
sudo apt install snapd -y

# install flatpak
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# spotify
sudo snap install spotify

# notion
sudo snap install notion-snap -y

# install gnome.Boxes
flatpak install flathub org.gnome.Boxes -y

# install VLC
sudo apt install vlc -y

# install transmition
sudo apt-get install transmission -y

# scrypy
sudo apt install scrcpy -y

# gparted
sudo apt-get install gparted -y

# timeshift
sudo apt-get install timeshift -y

# emote
sudo snap install emote

# stremio
flatpak install flathub com.stremio.Stremio

# typora
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository 'deb https://typora.io/linux ./' -y
sudo apt update
sudo apt-get install typora -y

# install OBS
sudo add-apt-repository ppa:obsproject/obs-studio -y
sudo apt update
sudo apt-get install obs-studio -y

# wine
sudo dpkg --add-architecture i386 
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main' -y # 20.04
sudo apt update
sudo apt install --install-recommends winehq-stable -y

# @@@ ADDONS INSTALL @@@

# Ativa vscode como contexto
bash -c "$(wget -qO- https://raw.githubusercontent.com/harry-cpp/code-nautilus/master/install.sh)"
sudo wget https://raw.githubusercontent.com/mhsattarian/nemo-open-in-vscode/master/vscode.nemo_action -O ~/.local/share/nemo/actions/vscode.nemo_action

# @@@ OUTSIDE INSTALL @@@

# 1. code
# 2. gitkraken
# 3. steam
# 4. chrome
# 5. Edge
# 6. insync
# 7. teams