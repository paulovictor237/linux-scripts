# update
sudo apt update
sudo apt upgrade -y
sudo apt install neofetch git curl -y   
neofetch ## show your system information   

# zsh
sudo apt install zsh -y
yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
yes | bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
cat ./linux/.zshrc.sh >> ~/.zshrc
chsh -s $(which zsh)
zsh
source ~/.zshrc 

# node
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.zshrc 
nvm install v20.12.2 
nvm alias default v20.12.2
nvm use v20.12.2
npm i -g yarn bun
nvm list       

# python
sudo apt update
sudo apt install -y build-essential zlib1g-dev libffi-dev libssl-dev liblzma-dev libbz2-dev libreadline-dev libsqlite3-dev
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
pyenv install 3.10
pyenv shell 3.10.0
pyenv global 3.10
pip install --upgrade pip
pip install pipenv
pyenv versions

# docker
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt remove $pkg; done
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo groupadd docker
sudo usermod -aG docker $USER
# sudo chown -R $USER:$USER ./folder
sudo docker run hello-world

# git and ssh configuration
git config --global user.name "peve"
git config --global user.email "paulovictor237@gmail.com"
ssh-keygen -t rsa -b 4096 -C "paulovictor237@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
# show your ssh key, paste on github or bitbucket
cat  ~/.ssh/id_rsa.pub # Show the key
# enable remote ssh after active the key 
ssh -T git@github.com #  response YES
ssh -T git@bitbucket.org #  response YES

################################################
#             DESKTOP APPLICATIONS             #
################################################

# chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# edge
sudo apt remove microsoft-edge-stable
sudo rm ~/.config/microsoft-edge
cd ~/Downloads
sudo curl -o microsoft-edge-stable_121.0.2277.128-1_amd64.deb https://packages.microsoft.com/repos/edge/pool/main/m/microsoft-edge-stable/microsoft-edge-stable_121.0.2277.128-1_amd64.deb
sudo apt install ./microsoft-edge-stable_121.0.2277.128-1_amd64.deb

# snap packages
sudo apt install snapd -y
sudo snap install code --classic
sudo snap install android-studio --classic
sudo snap install obsidian --classic
sudo snap install slack spotify emote postman insomnia 
bash -c "$(wget -qO- https://raw.githubusercontent.com/harry-cpp/code-nautilus/master/install.sh)"

# install flatpak
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub -y --noninteractive com.stremio.Stremio
flatpak install flathub -y --noninteractive com.uploadedlobster.peek
flatpak install flathub -y --noninteractive io.beekeeperstudio.Studio
flatpak install flathub -y --noninteractive io.dbeaver.DBeaverCommunity
flatpak install flathub -y --noninteractive org.flameshot.Flameshot

# install obs
sudo apt install libxtst-dev libxss-dev libprocps-dev libopencv-dev
flatpak install flathub -y --noninteractive com.obsproject.Studio

# install warp-terminal
sudo apt-get install wget gpg
wget -qO- https://releases.warp.dev/linux/keys/warp.asc | gpg --dearmor > warpdotdev.gpg
sudo install -D -o root -g root -m 644 warpdotdev.gpg /etc/apt/keyrings/warpdotdev.gpg
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/warpdotdev.gpg] https://releases.warp.dev/linux/deb stable main" > /etc/apt/sources.list.d/warpdotdev.list'
rm warpdotdev.gpg
sudo apt update && sudo apt install warp-terminal

# swap expand 19G
free -m
sudo swapon --show
sudo fallocate -l 19G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon --show
echo '/swapfile none  swap sw 0 0' | sudo tee -a /etc/fstab

# fix 'ç' & 'Ç' in international keyboard
cp ./linux/.XCompose ~/

# jetbrains mono font
unzip ./linux/assets/ttf.zip -d /tmp
mkdir ~/.local/share/fonts
cp -R /tmp/ttf/* ~/.local/share/fonts
sudo fc-cache -f -v

# react native
sudo apt update
sudo apt install openjdk-17-jdk -y
readlink -f $(which java)      
sudo apt install watchman -y
gsettings set org.gnome.mutter check-alive-timeout 0

# gnome-shell-extensions
sudo apt install gnome-shell-extensions -y
https://extensions.gnome.org/extension/6807/system-monitor/
https://extensions.gnome.org/extension/779/clipboard-indicator/
https://extensions.gnome.org/extension/352/middle-click-to-close-in-overview/
https://extensions.gnome.org/extension/4033/x11-gestures/

# Em caso de bugs [ Disable Wayland, active only X11 (Xorg) ]
code /etc/gdm3/custom.conf
WaylandEnable=false #Uncomment the line
sudo systemctl restart gdm3 # will restart the system

# gesture for X11
sudo add-apt-repository ppa:touchegg/stable
sudo apt update
sudo apt install -y touchegg
systemctl status touchegg


