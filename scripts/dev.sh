#!/usr/bin/env bash

# -------------------------------------------------------------------------------
tput setaf 3  ; echo "Ambiente de desenvolvimento - Aguarde" ; tput sgr0
# -------------------------------------------------------------------------------

# update
tput setaf 2  ; echo "Update" ; tput sgr0
sudo apt update
sudo apt upgrade -y
sudo apt install git

# install nodejs
tput setaf 2  ; echo "nodejs" ; tput sgr0
sudo apt install git -y
sudo apt install curl -y
curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs -y
source ~/.bashrc 
node -v
npm -v

# yarn
tput setaf 2  ; echo "yarn" ; tput sgr0
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install --no-install-recommends yarn -y
export PATH="$PATH:`yarn global bin`"
source ~/.bashrc
yarn --version

# -------------------------------------------------------------------------------
tput setaf 3  ; echo "Instalacao Completa" ; tput sgr0
# -------------------------------------------------------------------------------
# source ~/.zshrc

exit 1
