zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions

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


