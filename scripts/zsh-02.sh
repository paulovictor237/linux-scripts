#!/usr/bin/env bash

# update
tput setaf 2  ; echo "Update" ; tput sgr0
sudo apt update
sudo apt upgrade -y
sudo apt install git

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
cat extras/zsh-extras.txt >> ~/.zshrc
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
cp extras/Dracula.json ~/.config/tilix/schemes

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
