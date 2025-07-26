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
sudo apt install regolith-desktop regolith-session-flashback regolith-look-lascaille
# System Restart

# fix dark mode in gtk apps
mkdir -p ~/.config/xdg-desktop-portal
echo -e "[preferred]\ndefault=gtk;wlr" > ~/.config/xdg-desktop-portal/portals.conf



