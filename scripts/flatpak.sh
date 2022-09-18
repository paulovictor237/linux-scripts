# install flatpak
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# stremio
flatpak install flathub com.stremio.Stremio

# lutris
flatpak install flathub net.lutris.Lutris

# simplenote
flatpak install flathub com.simplenote.Simplenote

# bottles
flatpak install flathub com.usebottles.bottles

# black box
flatpak install flathub com.raggesilver.BlackBox
flatpak run com.raggesilver.BlackBox

# blanket - white noise
flatpak install flathub com.rafaelmardojai.Blanket

# gnome boxes
flatpak install flathub org.gnome.Boxes

# gcolor3
flatpak install flathub nl.hjdskes.gcolor3

# peek
flatpak install flathub com.uploadedlobster.peek
