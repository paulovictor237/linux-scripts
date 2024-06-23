# fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish -y
chsh -s $(which fish)

# oh my fish
curl -L https://get.oh-my.fish | fish
omf update
omf theme default
omf install / omf theme
# agnoster
# bobthefish

# johanson
# simple-ass-prompt

# fishface
# fishbone
# tomita
 
$ omf install simple-ass-prompt
fishface
https://github.com/oh-my-fish/oh-my-fish/blob/master/docs/Themes.md

# starship
curl -sS https://starship.rs/install.sh | sh
code ~/.config/fish/config.fish
starship init fish | source

# configure
code ~/.config/fish/config.fish
source ~/.config/fish/config.fish

####################################
#          FHSI SETTINGS           #
####################################

# python - pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
alias python="python3"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# java for endroid emulator
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# alias
alias foo='echo "$(hostname)@$(whoami):$PWD"'
alias aliaslist='grep "^alias" ~/.zshrc | cut -d "=" -f 1 | cut -d " " -f 2'
alias node_modules_remove="find . -name "node_modules" -type d -prune -exec rm -rf '{}' +"
alias update="sudo apt update;sudo apt upgrade"
alias myip="ip -4 addr | grep inet"
alias killport='f() { sudo kill -9 $(sudo lsof -t -i:$1) };f'
alias zshrc="code ~/.zshrc"

alias rn-clean="rm -rf android/app/build android/.gradle android/build"
alias rn-hard-reset="rm -rf android/app/build android/.gradle android/build node_modules"
alias rn-build="yarn && yarn android && yarn start --reset-cache"

alias auto-editor-file='f() { auto-editor $1 --export shotcut --margin 0.2sec --cut-out start,0.5sec };f'
alias auto-editor-any="auto-editor *.mkv --export shotcut --margin 0.2sec --cut-out start,0.5sec"



