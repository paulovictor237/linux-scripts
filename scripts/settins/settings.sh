# @ increase the size of swapfile without removing
sudo swapoff /swapfile
sudo dd if=/dev/zero of=/swapfile bs=1G count=6 oflag=append conv=notrunc
# sudo dd if=/dev/zero of=/swapfile bs=1G count=8
sudo mkswap /swapfile
sudo swapon /swapfile

# @ Reset GNOME Desktop Settings to Factory Default on Ubuntu
sudo apt install dconf-editor # Instalar dconf  
dconf reset -f /org/gnome/ # Reset completo
# Backup dconf
dconf dump / > full-backup # full backup
dconf load / < full-backup # full restore