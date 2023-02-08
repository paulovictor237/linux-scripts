# @ Reset GNOME Desktop Settings to Factory Default on Ubuntu
sudo apt install dconf-editor # Instalar dconf  
dconf reset -f /org/gnome/ # Reset completo
# Backup dconf
dconf dump / > full-backup # full backup
dconf load / < full-backup # full restore