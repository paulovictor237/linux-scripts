# node
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
exec "$SHELL"
nvm install node 

# yarn
npm install --global yarn

# versions
echo -ne "node: " && node -v && echo -ne "npm: " &&  npm -v && echo -ne "yarn: " && yarn --version

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