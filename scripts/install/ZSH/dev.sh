# zsh
sudo apt-get install zsh -y

# oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# ZSH_THEME="spaceship" # Default "robbyrussell" 
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
# Set ZSH_THEME="spaceship" in your .zshrc.
code ~/.zshrc

# plugins
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

# spaceship config
cat .zshrc.sh >> ~/.zshrc

# jetbrains mono 
cp -R ttf ~/.local/share/fonts
fc-cache -f -v

# dracula theme gnome terminal
sudo apt-get install dconf-cli
cd ~/Downloads
git clone https://github.com/dracula/gnome-terminal
cd gnome-terminal
./install.sh

# node
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
source ~/.bashrc
nvm install node 

# yarn
npm install --global yarn

# versions
echo -ne "node: " && node -v && echo -ne "npm: " &&  npm -v && echo -ne "yarn: " && yarn --version
