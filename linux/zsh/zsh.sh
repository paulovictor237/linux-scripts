# zsh
sudo apt-get install zsh -y
# chsh -s $(which zsh)

# oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# plugins
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

# spaceship config
cat .zshrc.sh >> ~/.zshrc
cp .zsh_aliases ~/

# spaceship
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
code ~/.zshrc
source ~/.zshrc

# dracula theme gnome terminal
# sudo apt-get install dconf-cli
# cd ~/Downloads
# git clone https://github.com/dracula/gnome-terminal
# cd gnome-terminal
# ./install.sh

