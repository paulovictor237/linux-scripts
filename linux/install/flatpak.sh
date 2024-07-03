# install flatpak
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# stremio
flatpak install flathub -y --noninteractive com.stremio.Stremio

# peek
flatpak install flathub -y --noninteractive com.uploadedlobster.peek

# beekeeper
flatpak install flathub -y --noninteractive io.beekeeperstudio.Studio

# dbeaver
flatpak install flathub -y --noninteractive io.dbeaver.DBeaverCommunity

# dshot
flatpak install flathub -y  --noninteractive org.flameshot.Flameshot

# obs
flatpak install flathub -y --noninteractive com.obsproject.Studio
flatpak install flathub -y --noninteractive com.obsproject.Studio.Plugin.SceneSwitcher
sudo apt install libxtst-dev libxss-dev libprocps-dev libopencv-dev

# desktop-files-creator
# flatpak install flathub -y --noninteractive com.github.alexkdeveloper.desktop-files-creator

# gnome boxes
# flatpak install flathub -y --noninteractive org.gnome.Boxes

# touche
# flatpak install flathub com.github.joseexposito.touche

# lutris
# flatpak install flathub -y --noninteractive net.lutris.Lutris

# bottles
# flatpak install flathub -y --noninteractive com.usebottles.bottles

# heroic games
# flatpak install flathub -y com.heroicgameslauncher.hgl

# ExtensionManager
# flatpak install flathub -y --noninteractive com.mattjakeman.ExtensionManager

# handbrake
# flatpak install flathub -y --noninteractive fr.handbrake.ghb

# gcolor3
# flatpak install flathub -y --noninteractive nl.hjdskes.gcolor3

# black box
# flatpak install flathub -y --noninteractive com.raggesilver.BlackBox

# blanket - white noise
# flatpak install flathub -y --noninteractive com.rafaelmardojai.Blanket

# simplenote
# flatpak install flathub -y --noninteractive com.simplenote.Simplenote

