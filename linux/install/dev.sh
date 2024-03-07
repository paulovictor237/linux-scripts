# node
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
exec "$SHELL"
nvm install node 

# yarn
npm install --global yarn

# versions
echo -ne "node: " && node -v && echo -ne "npm: " &&  npm -v && echo -ne "yarn: " && yarn --version

# huskyrc
cp assets/.huskyrc ~/

# java
sudo add-apt-repository ppa:openjdk-r/ppa -y
sudo apt-get update
sudo apt-get install openjdk-11-jdk -y
java -version
readlink -f $(which java)

export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64