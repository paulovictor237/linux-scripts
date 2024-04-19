# @ increase the size of swapfile without removing
sudo swapoff /swapfile
sudo dd if=/dev/zero of=/swapfile bs=1G count=19 oflag=append conv=notrunc
# sudo dd if=/dev/zero of=/swapfile bs=1G count=8
sudo mkswap /swapfile
sudo swapon /swapfile