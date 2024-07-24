# node
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
exec "$SHELL"

# install settings
nvm install v20.12.2 
nvm alias default v20.12.2
nvm use v20.12.2

# global packages
npm i -g yarn bun 

# servers
npm i -g appcenter-cli serverless
# sls / appcenter login

# java
sudo apt-get update
sudo apt-get install openjdk-17-jdk -y
java -version
readlink -f $(which java)

# watchman
sudo apt -y install watchman                         

# flipper-server
npm i -g flipper-server@0.195.0
# flipper-server
# configure o SKD (Android SDK location)
# /home/peve/Android/Sdk

