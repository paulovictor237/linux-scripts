# install flatpak
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# edge
flatpak install flathub -y --noninteractive com.microsoft.Edge 

# stremio
flatpak install flathub -y --noninteractive com.stremio.Stremio

# lutris
flatpak install flathub -y --noninteractive net.lutris.Lutris

# bottles
flatpak install flathub -y --noninteractive com.usebottles.bottles

# gnome boxes
flatpak install flathub -y --noninteractive org.gnome.Boxes

# gcolor3
flatpak install flathub -y --noninteractive nl.hjdskes.gcolor3

# peek
flatpak install flathub -y --noninteractive com.uploadedlobster.peek

# handbrake
flatpak install flathub -y --noninteractive fr.handbrake.ghb

# black box
# flatpak install flathub -y --noninteractive com.raggesilver.BlackBox

# blanket - white noise
# flatpak install flathub -y --noninteractive com.rafaelmardojai.Blanket

# ExtensionManager
# flatpak install flathub -y --noninteractive com.mattjakeman.ExtensionManager

# simplenote
# flatpak install flathub -y --noninteractive com.simplenote.Simplenote

