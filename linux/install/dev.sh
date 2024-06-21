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

# java
sudo apt-get update
sudo apt-get install openjdk-17-jdk -y
java -version
readlink -f $(which java)

# watchman
sudo apt -y install watchman                         

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

# https://redirector.gvt1.com/edgedl/android/repository/emulator-linux_x64-11237101.zip
# /home/peve/Android/Sdk/$HOME/Android/Sdk
# crie uma cópia da pasta emulator
# Descompacte o arquivo ZIP do emulador transferido por download. Mova o conteúdo para o diretório de instalação do SDK.
# Cole o arquivo package.xml do diretório emulator_original no novo diretório emulator.
# Altere a versão do emulador especificada no arquivo package.xml para a versão que você transferiu por download e quer usar. Para fazer isso, role a tela até a parte de baixo do arquivo package.xml e encontre o texto semelhante a este:
# <revision><major>31</major><minor>1</minor><micro>4</micro></revision>
# Especifique a versão do emulador que você transferiu por download e quer instalar.
<revision><major>33</major><minor>1</minor><micro>24</micro></revision>
January 16, 2019</license><localPackage path="emulator" obsolete="false"><type-details xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="ns5:genericDetailsType"/><revision><major>33</major><minor>1</minor><micro>24</micro></revision><display-name>Android Emulator</display-name><uses-license ref="android-sdk-license"/></localPackage></ns2:repository>

# rodar temporariamente o servidor no browser
# npx -y flipper-server@0.195.0
# instalar globalmente - necessario reiniciar o terminal
npm i -g flipper-server@0.195.0
# flipper-server
# configure o SKD (Android SDK location)
# /home/peve/Android/Sdk

