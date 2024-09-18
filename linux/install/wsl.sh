# update
sudo apt update
sudo apt upgrade -y
sudo apt install neofetch -y
sudo apt install git -y
sudo apt install curl -y
sudo apt install watchman -y            

# zsh
sudo apt install zsh -y
yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
yes | bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
cat ./linux/zsh/.zshrc.sh >> ~/.zshrc
chsh -s $(which zsh)
zsh

# node
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
pyenv global 3.10 # exec "$SHELL"
nvm install v20.12.2 
nvm alias default v20.12.2
nvm use v20.12.2
npm i -g yarn bun 
nvm list

# java
sudo apt-get update
sudo apt-get install openjdk-17-jdk -y
java -version
readlink -f $(which java)             

# python
sudo apt-get update
sudo apt-get install -y build-essential zlib1g-dev libffi-dev libssl-dev liblzma-dev libbz2-dev libreadline-dev libsqlite3-dev
curl https://pyenv.run | bash
pyenv global 3.10
pyenv install 3.10
pyenv global 3.10
pip install --upgrade pip
pip install pipenv
pyenv versions

# docker
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
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
