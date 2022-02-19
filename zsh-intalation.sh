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
tput setaf 3  ; echo "Oh My Zsh" ; tput sgr0
# -------------------------------------------------------------------------------

# Zsh
tput setaf 2  ; echo "Zsh" ; tput sgr0
sudo apt-get install zsh -y
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# FiraCode
tput setaf 2  ; echo "FiraCode" ; tput sgr0
sudo add-apt-repository universe -y
sudo apt update -y
sudo apt install fonts-firacode -y

# spaceship
tput setaf 2  ; echo "ZSH_THEME=spaceship"; tput sgr0
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
# ZSH_THEME="robbyrussell" #Default
# ZSH_THEME="spaceship"
code ~/.zshrc
source ~/.zshrc

# Configurando Spaceship
tput setaf 2  ; echo "Configurando Spaceship" ; tput sgr0
cat /extras/zsh-extras.txt >> ~/.zshrc
source ~/.zshrc

# plugins
tput setaf 2  ; echo "spaceship theme" ; tput sgr0
sh -c "$(curl -fsSL https://git.io/zinit-install)"
zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
source ~/.zshrc

# jetbrains mono 
tput setaf 2  ; echo "jetbrains mono fonts" ; tput sgr0
cp -R ttf ~/.local/share/fonts
fc-cache -f -v

# Dracula tilix theme 
tput setaf 2  ; echo "Dracula tilix theme" ; tput sgr0
cp /extras/Dracula.json ~/.config/tilix/schemes

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
source ~/.zshrc
exit 1
