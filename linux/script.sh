# update
sudo apt update
sudo apt upgrade -y
sudo apt install neofetch git curl -y      

# zsh
sudo apt install zsh -y
yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
yes | bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
cat ./linux/assets/.zshrc.sh >> ~/.zshrc
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
sudo docker run hello-world

# git
git config --global user.name "peve"
git config --global user.email "paulovictor237@gmail.com"
ssh-keygen -t rsa -b 4096 -C "paulovictor237@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
cat  ~/.ssh/id_rsa.pub # Show the key

################################################
#             DESKTOP APPLICATIONS             #
################################################

# snap
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

# obs
sudo apt install libxtst-dev libxss-dev libprocps-dev libopencv-dev
flatpak install flathub -y --noninteractive com.obsproject.Studio

# swap
free -m
sudo swapon --show
sudo fallocate -l 19G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon --show
echo '/swapfile none  swap sw 0 0' | sudo tee -a /etc/fstab

# fix 'ç' & 'Ç' in international keyboard
cp ./linux/assets/.XCompose ~/

# jetbrains mono 
unzip ./linux/assets/ttf.zip -d /tmp
mkdir ~/.local/share/fonts
cp -R /tmp/ttf/* ~/.local/share/fonts
sudo fc-cache -f -v

# excalifont
cp ./linux/assets/excalifont.ttf ~/.local/share/fonts
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

# gesture
sudo add-apt-repository ppa:touchegg/stable
sudo apt update
sudo apt install -y touchegg
systemctl status touchegg





