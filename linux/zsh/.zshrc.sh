zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions

SPACESHIP_PROMPT_ORDER=(
  python         # Python section
  host           # Hostname section
  user           # Username section
  git            # Git section (git_branch + git_status)
  dir            # Current directory section
  hg             # Mercurial section (hg_branch  + hg_status)
  exec_time      # Execution time
  line_sep       # Line break
  venv           # virtualenv section
  jobs           # Background jobs indicator
  exit_code      # Exit code section
  char           # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_HOST_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_ASYNC=false
SPACESHIP_VENV_PREFIX="("
SPACESHIP_VENV_SUFFIX=") "
SPACESHIP_VENV_COLOR="#D84229"

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

# fly
export FLYCTL_INSTALL="/home/peve/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

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


