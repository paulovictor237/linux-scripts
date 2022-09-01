# install flatpak
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# stremio
flatpak install flathub com.stremio.Stremio

# black box
flatpak install flathub com.raggesilver.BlackBox

# blanket - white noise
flatpak install flathub com.rafaelmardojai.Blanket

# gnome boxes
flatpak install flathub org.gnome.Boxes -y

# gcolor3
flatpak install flathub nl.hjdskes.gcolor3