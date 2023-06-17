# install flatpak
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# stremio
flatpak install flathub -y --noninteractive com.stremio.Stremio

# obs
flatpak install flathub -y --noninteractive com.obsproject.Studio

# desktop-files-creator
flatpak install flathub -y --noninteractive com.github.alexkdeveloper.desktop-files-creator

# gnome boxes
flatpak install flathub -y --noninteractive org.gnome.Boxes

# peek
flatpak install flathub -y --noninteractive com.uploadedlobster.peek

# beekeeper
flatpak install flathub -y --noninteractive io.beekeeperstudio.Studio

# lutris
flatpak install flathub -y --noninteractive net.lutris.Lutris

# bottles
flatpak install flathub -y --noninteractive com.usebottles.bottles

# heroic games
flatpak install flathub com.heroicgameslauncher.hgl

# gcolor3
# flatpak install flathub -y --noninteractive nl.hjdskes.gcolor3

# handbrake
# flatpak install flathub -y --noninteractive fr.handbrake.ghb

# black box
# flatpak install flathub -y --noninteractive com.raggesilver.BlackBox

# blanket - white noise
# flatpak install flathub -y --noninteractive com.rafaelmardojai.Blanket

# ExtensionManager
# flatpak install flathub -y --noninteractive com.mattjakeman.ExtensionManager

# simplenote
# flatpak install flathub -y --noninteractive com.simplenote.Simplenote

