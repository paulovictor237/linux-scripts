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

# gnome-shell-extensions
sudo apt install gnome-shell-extensions -y

# install tilix
sudo apt install tilix -y

# gufw firewall
sudo apt install gufw -y

# spicetify-cli
curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

sudo chmod a+wr /usr/share/spotify
sudo chmod a+wr /usr/share/spotify/Apps -R

curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.sh | sh


# install VLC
# sudo apt install vlc -y

# isync
# sudo apt install isync

# timeshift
# sudo apt install timeshift -y

# gnome tweak-tool
# sudo apt install gnome-tweaks -y

# cool-retro-term
# sudo apt install cool-retro-term -y

# baobab disk usage analyzer
# sudo apt install baobab -y

# 7zip
# sudo apt install p7zip-full -y

# gnome-sushi
# sudo apt install gnome-sushi -y

# ulauncher
# sudo add-apt-repository ppa:agornostal/ulauncher -y
# sudo apt install ulauncher -y

# install transmition
# sudo apt install transmission -y

# folder-color
# sudo apt install folder-color -y

# gparted
# sudo apt install gparted -y

# gufw
# sudo apt install gufw -y

# input-remapper
# sudo apt install input-remapper -y

# DaVinciResolve fix-bug
# https://www.blackmagicdesign.com/br/products/davinciresolve/
# sudo apt install intel-opencl-icd -y
