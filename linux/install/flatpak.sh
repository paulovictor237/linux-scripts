# install flatpak
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# stremio
flatpak install flathub -y --noninteractive com.stremio.Stremio

# desktop-files-creator
flatpak install flathub -y --noninteractive com.github.alexkdeveloper.desktop-files-creator

# gnome boxes
flatpak install flathub -y --noninteractive org.gnome.Boxes

# touche
flatpak install flathub com.github.joseexposito.touche

# peek
flatpak install flathub -y --noninteractive com.uploadedlobster.peek

# beekeeper
flatpak install flathub -y --noninteractive io.beekeeperstudio.Studio

# dbeaver
flatpak install flathub -y --noninteractive io.dbeaver.DBeaverCommunity

# lutris
flatpak install flathub -y --noninteractive net.lutris.Lutris

# bottles
flatpak install flathub -y --noninteractive com.usebottles.bottles

# heroic games
flatpak install flathub -y com.heroicgameslauncher.hgl

# dshot
flatpak install flathub -y org.flameshot.Flameshot

# ExtensionManager
flatpak install flathub -y --noninteractive com.mattjakeman.ExtensionManager

# handbrake
flatpak install flathub -y --noninteractive fr.handbrake.ghb

# obs
flatpak install flathub -y --noninteractive com.obsproject.Studio
flatpak install flathub -y --noninteractive com.obsproject.Studio.Plugin.SceneSwitcher
sudo apt install libxtst-dev libxss-dev libprocps-dev libopencv-dev

# gcolor3
# flatpak install flathub -y --noninteractive nl.hjdskes.gcolor3

# black box
# flatpak install flathub -y --noninteractive com.raggesilver.BlackBox

# blanket - white noise
# flatpak install flathub -y --noninteractive com.rafaelmardojai.Blanket

# simplenote
# flatpak install flathub -y --noninteractive com.simplenote.Simplenote

