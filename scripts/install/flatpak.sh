# install flatpak
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# stremio
flatpak install flathub com.stremio.Stremio\

# steam
flatpak install flathub com.valvesoftware.Steam

# lutris
flatpak install flathub net.lutris.Lutris

# bottles
flatpak install flathub com.usebottles.bottles

# gnome boxes
flatpak install flathub org.gnome.Boxes

# gcolor3
flatpak install flathub nl.hjdskes.gcolor3

# peek
flatpak install flathub com.uploadedlobster.peek

# handbrake
flatpak install flathub fr.handbrake.ghb

# ExtensionManager
flatpak install flathub com.mattjakeman.ExtensionManager

# blanket - white noise
flatpak install flathub com.rafaelmardojai.Blanket

# black box
flatpak install flathub com.raggesilver.BlackBox
flatpak run com.raggesilver.BlackBox

# simplenote
flatpak install flathub com.simplenote.Simplenote

