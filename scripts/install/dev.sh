# jetbrains mono 
unzip ttf.zip -d /tmp
cp -R /tmp/ttf/* ~/.local/share/fonts
fc-cache -f -v

# node
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
source ~/.bashrc
nvm install node 

# yarn
npm install --global yarn

# versions
echo -ne "node: " && node -v && echo -ne "npm: " &&  npm -v && echo -ne "yarn: " && yarn --version

# java
sudo add-apt-repository ppa:openjdk-r/ppa -y
sudo apt-get update
sudo apt-get install openjdk-11-jdk -y
java -version
readlink -f $(which java)

export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64