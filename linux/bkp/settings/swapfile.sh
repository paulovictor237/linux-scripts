# UBUNTU 24.04
free -m
sudo swapon --show
sudo fallocate -l 19G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon --show
echo '/swapfile none  swap sw 0 0' | sudo tee -a /etc/fstab


# UBUNTU 22.04
# @ increase the size of swapfile without removing
sudo swapoff /swapfile
sudo dd if=/dev/zero of=/swapfile bs=1G count=19 oflag=append conv=notrunc
# sudo dd if=/dev/zero of=/swapfile bs=1G count=8
sudo mkswap /swapfile
sudo swapon /swapfile