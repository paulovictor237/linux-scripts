#!/usr/bin/env bash

# -------------------------------------------------------------------------------
tput setaf 3  ; echo "Instalacao via terminal - Aguarde" ; tput sgr0
# -------------------------------------------------------------------------------

# update
tput setaf 2  ; echo "Update" ; tput sgr0
sudo apt update
sudo apt upgrade -y

# -------------------------------------------------------------------------------
tput setaf 3  ; echo "Instalacao via pacotes - Aguarde" ; tput sgr0
# -------------------------------------------------------------------------------

# code
# tput setaf 2  ; echo "VScode" ; tput sgr0
# sudo apt install ./programs/code_1.64.2-1644445741_amd64.deb -y

# code
tput setaf 2  ; echo "Ativa VScode como contexto" ; tput sgr0
bash -c "$(wget -qO- https://raw.githubusercontent.com/harry-cpp/code-nautilus/master/install.sh)"
# sudo wget https://raw.githubusercontent.com/mhsattarian/nemo-open-in-vscode/master/vscode.nemo_action -O ~/.local/share/nemo/actions/vscode.nemo_action

# gitkraken
# tput setaf 2  ; echo "Gitkraken" ; tput sgr0
# sudo apt install ./programs/gitkraken-amd64.deb -y

# steam
tput setaf 2  ; echo "Steam" ; tput sgr0
sudo apt install ./programs/steam_latest.deb -y

# chrome
# tput setaf 2  ; echo "Chrome" ; tput sgr0
# sudo apt install ./programs/google-chrome-stable_current_amd64.deb -y
# 
# Edge
tput setaf 2  ; echo "Edge" ; tput sgr0
sudo apt install ./programs/microsoft-edge-stable_98.0.1108.50-1_amd64.deb -y

# insync
tput setaf 2  ; echo "Insync" ; tput sgr0
sudo apt install ./programs/insync_3.7.1.50307-impish_amd64.deb -y

# teams
tput setaf 2  ; echo "Teams" ; tput sgr0
sudo apt install ./programs/teams_1.4.00.26453_amd64.deb -y

# install stremio 
tput setaf 2  ; echo "Stremio" ; tput sgr0
# wget http://mirrors.kernel.org/ubuntu/pool/multiverse/f/fdk-aac/libfdk-aac1_0.1.6-1_amd64.deb
sudo apt install ./programs/libfdk-aac1_*_amd64.deb -y
sudo apt install ./programs/stremio*amd64.deb -y
sudo apt --fix-broken install

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
