# @@@ COMMAND INSTALL @@@

# update
sudo apt update
sudo apt upgrade -y

# neofetch
sudo apt install neofetch -y

# git
sudo apt install git -y

# curl
sudo apt install curl -y

# install VLC
sudo apt install vlc -y

# cool-retro-term
sudo apt install cool-retro-term -y

# install transmition
sudo apt-get install transmission -y

# timeshift
sudo apt-get install timeshift -y

# gnome-shell-extensions
sudo apt install gnome-shell-extensions -y

# steam
sudo add-apt-repository multiverse -y
sudo apt update
sudo apt install steam -y

# install tilix
# sudo apt install tilix -y

# gparted
# sudo apt-get install gparted -y

# gufw
# sudo apt install gufw -y

# input-remapper
# sudo apt install input-remapper -y

# Ativa vscode como contexto
bash -c "$(wget -qO- https://raw.githubusercontent.com/harry-cpp/code-nautilus/master/install.sh)"
sudo wget https://raw.githubusercontent.com/mhsattarian/nemo-open-in-vscode/master/vscode.nemo_action -O ~/.local/share/nemo/actions/vscode.nemo_action

