#!/usr/bin/env bash

# @@@ COMMAND INSTALL @@@

# update
sudo apt update
sudo apt upgrade -y

# neofetch
sudo apt install neofetch -y

# git
sudo apt install git -y

# install VLC
sudo apt install vlc -y

# cool-retro-term
# sudo apt install   -y # opcional
sudo apt install cool-retro-term -y

# install tilix
sudo apt install tilix -y

# install transmition
sudo apt-get install transmission -y

# gparted
sudo apt-get install gparted -y

# timeshift
sudo apt-get install timeshift -y

# gufw
sudo apt install gufw -y

# input-remapper
sudo apt install input-remapper -y

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

