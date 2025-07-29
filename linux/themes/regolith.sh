# instalação do Regolith Desktop no Linux
https://regolith-desktop.com/docs/using-regolith/install

# Add Regolith Repository
wget -qO - https://archive.regolith-desktop.com/regolith.key | \
gpg --dearmor | sudo tee /usr/share/keyrings/regolith-archive-keyring.gpg > /dev/null
echo deb "[arch=amd64 signed-by=/usr/share/keyrings/regolith-archive-keyring.gpg] \
https://archive.regolith-desktop.com/ubuntu/stable noble v3.3" | \
sudo tee /etc/apt/sources.list.d/regolith.list
Update apt and install Regolith
sudo apt update
sudo apt install regolith-desktop regolith-session-flashback regolith-look-lascaille -y
# System Restart

# fix dark mode in gtk apps
mkdir -p ~/.config/xdg-desktop-portal
echo -e "[preferred]\ndefault=gtk;wlr" > ~/.config/xdg-desktop-portal/portals.conf

# tray bar
sudo apt install copyq -y
sudo snap install flameshot -y
# flatpak install flathub -y --noninteractive org.flameshot.Flameshot
sudo snap install indicator-sound-switcher
sudo apt install gnome-tweaks -y

# terminal tools
sudo apt install neofetch -y && neofetch
sudo apt install btop -y && btop
sudo apt install cmatrix -y && cmatrix
sudo apt install pipes-sh -y && pipes
sudo apt install cowsay fortune -y && fortune | cowsay
sudo apt install bat -y && bat --version

# Wallpapers
https://wallhaven.cc/w/1jrkjv
https://wallhaven.cc/w/v9owd3
https://wallhaven.cc/w/5yd6d5
https://wallhaven.cc/w/ly93ry
https://www.reddit.com/r/unixporn/
https://wall.alphacoders.com/big.php?i=1328375
https://github.com/dharmx/walls/blob/main/apocalypse/a_motorcycle_parked_outside_a_restaurant.jpg
https://github.com/notAxon/wallpapers/blob/main/Space/gruv-ixion.jpg
https://github.com/notAxon/wallpapers/blob/main/catppuccin/wallhaven-d6j79o.png

# 🛠️ Settings
# https://regolith-desktop.com/docs/using-regolith/configuration/
# ~/.config/regolith3/Xresources
# Super + Alt + L







