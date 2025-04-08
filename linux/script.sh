# update
sudo apt update
sudo apt upgrade -y
sudo apt install neofetch git curl -y   
neofetch ## show your system information   

# zsh
sudo apt install zsh -y
yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
yes | bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
cat .zshrc.sh >> ~/.zshrc
chsh -s $(which zsh)
zsh
source ~/.zshrc 

# Clonar o repositório do asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.15.0

# Adicionar asdf ao zshrc
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.zshrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.zshrc
source ~/.zshrc

# Instalar plugin e versão do Node.js
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs 20.0.0
asdf global nodejs 20.0.0

# Instalar plugin e versão do Python
asdf plugin-add python https://github.com/danhper/asdf-python.git
asdf install python 3.10.0
asdf global python 3.10.0

# Instalar plugin e versão do PHP
asdf plugin-add php https://github.com/asdf-community/asdf-php.git
asdf install php 8.1.0
asdf global php 8.1.0

# Instalar plugin e versão do Go
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf install golang 1.20.0
asdf global golang 1.20.0

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
sudo apt install microsoft-edge-stable=130.0.2849.80-1
sudo apt-mark hold microsoft-edge-stable

# snap packages
sudo apt install snapd -y
sudo snap install code --classic
sudo snap install android-studio --classic
sudo snap install obsidian --classic
sudo snap install slack spotify emote bruno postman insomnia 
bash -c "$(wget -qO- https://raw.githubusercontent.com/harry-cpp/code-nautilus/master/install.sh)"

# install flatpak
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub -y --noninteractive com.jetpackduba.Gitnuro
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
cp .XCompose ~/

# jetbrains mono font
unzip ./linux/assets/ttf.zip -d /tmp
mkdir ~/.local/share/fonts
cp -R /tmp/ttf/* ~/.local/share/fonts
sudo fc-cache -f -v

# react native
sudo apt update
sudo apt install openjdk-17-jdk -y
readlink -f $(which java)      
npm i -g flipper-server@0.195.0 appcenter-cli 
sudo apt install watchman -y

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


