# increase the size of swapfile without removing
sudo swapoff /swapfile
sudo dd if=/dev/zero of=/swapfile bs=1G count=6 oflag=append conv=notrunc
# The above command will append 1GiB of zero bytes at the end of your swap file.
sudo mkswap /swapfile
sudo swapon /swapfile
