# Discord black screen
code /etc/gdm3/custom.conf
WaylandEnable=false #Uncomment the line
sudo systemctl restart gdm3

# sudo apt reinstall chrome-gnome-shell
sudo apt install gnome-shell-extensions -y