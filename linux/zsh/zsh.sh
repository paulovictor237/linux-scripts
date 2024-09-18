# zsh
sudo apt install zsh -y
yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
yes | bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
cat ./linux/zsh/.zshrc.sh >> ~/.zshrc
zsh

# active theme
code ~/.zshrc
ZSH_THEME="spaceship"
ZSH_THEME="agnoster"
source ~/.zshrc

# fonts-powerline
sudo apt install fonts-powerline -y
