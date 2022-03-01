#!/usr/bin/env bash

# -------------------------------------------------------------------------------
tput setaf 3  ; echo "Oh My Zsh" ; tput sgr0
# -------------------------------------------------------------------------------

# update
tput setaf 2  ; echo "Update" ; tput sgr0
sudo apt update
sudo apt upgrade -y
sudo apt install git

# Zsh
tput setaf 2  ; echo "Zsh" ; tput sgr0
sudo apt-get install zsh -y
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" -n

# -------------------------------------------------------------------------------
tput setaf 3  ; echo "Definindo ZSH como padrao" ; tput sgr0
# -------------------------------------------------------------------------------
chsh -s $(which zsh)

# -------------------------------------------------------------------------------
tput setaf 3  ; echo "Instalacao Completa" ; tput sgr0
# -------------------------------------------------------------------------------
source ~/.zshrc

exit 1
