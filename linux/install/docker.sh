# install
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg -y
sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# add to root group
sudo groupadd docker
sudo usermod -aG docker $USER

# reboot to take effect
reboot

# hellow world
docker run hello-world
docker run --rm debian bash --version
docker run -p 8080:80 nginx