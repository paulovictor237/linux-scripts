# node
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
exec "$SHELL"

# install settings
nvm install v20.12.2 
nvm alias default v20.12.2
nvm use v20.12.2

# global packages
npm install -g yarn appcenter-cli serverless
# appcenter login
# sls login

# huskyrc
cp linux/assets/.huskyrc ~/

# java
sudo apt-get update
# sudo apt-get install openjdk-11-jdk -y
sudo apt-get install openjdk-17-jdk -y
java -version
readlink -f $(which java)

# watchman
sudo apt -y install watchman                         

# export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64

# fly
curl -L https://fly.io/install.sh | sh

# AWS
cd ~/Downloads
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip -u awscliv2.zip
sudo ./aws/install
aws configure # IAM User Access Keys
# us-east-1
# json

# Install Android Studio
# Android Studio > Tools > SDK Manager > SDK tools > Android SDK Command-line Tools.
# Android 14 (UpsideDownCake)
# Intel x86 Atom_64 System Image or Google APIs Intel x86 Atom System Image
# any device

# open in firefox !!!
# https://developer.android.com/studio/emulator_archive
# stable emulator version (33.1.24)
# emulator -list-avds
# emulator @Pixel_4_API_33  

# rodar temporariamente o servidor no browser
# npx -y flipper-server@0.195.0
# instalar globalmente - necessario reiniciar o terminal
npm i -g flipper-server@0.195.0
# flipper-server
# configure o SKD (Android SDK location)
# /home/peve/Android/Sdk

