# Guia Linux Ubuntu 22.04+ — Setup de Desenvolvimento

> Copie e cole bloco a bloco. Ajuste conforme necessidade. Execute tudo em um terminal Zsh (ou Bash) com privilégios adequados.
>
> Convenções:
>
> - Comentários começam com `#` — leia antes de executar.
> - Blocos opcionais marcados com (Opcional).
> - Use `sudo -v` no início para manter sessão sudo ativa.

---

## 1. Atualização do Sistema & Pacotes Essenciais

```bash
sudo -v
sudo apt update && sudo apt upgrade -y
sudo apt install -y git curl wget
sudo apt install -y neofetch
neofetch
```

---

## 2. Configuração Git & SSH

### 2.1 Identidade Git

```bash
git config --global user.name "Seu Nome"
git config --global user.email "seu-email@exemplo.com"
```

### 2.2 Chave SSH (ED25519 recomendada)

```bash
ssh-keygen -t ed25519 -C "seu-email@exemplo.com"
# Se sistema muito antigo, usar fallback RSA (não recomendado):
# ssh-keygen -t rsa -b 4096 -C "seu-email@exemplo.com"
```

### 2.3 Agente SSH

```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub  # Copie e adicione no GitHub/Bitbucket
ssh -T git@github.com || true
ssh -T git@bitbucket.org || true
```

---

## 3. Instalar Zsh, Oh My Zsh & Zinit

```bash
sudo apt install -y zsh
# Oh My Zsh
yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Zinit (plugin manager)
yes | bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
# Definir Zsh como shell padrão
chsh -s "$(which zsh)"
```

### 3.1 Plugins base (Adicionar ao ~/.zshrc)

Adicione somente os plugins agora. As outras configurações (pyenv, nvm, Java/Android, aliases) aparecerão nas seções correspondentes mais abaixo.

```bash
cat <<'EOF' >> ~/.zshrc
### >>> ZINIT PLUGINS <<<
zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
### <<< FIM ZINIT PLUGINS >>>
EOF

source ~/.zshrc
```

---

## 4. Theming & Terminal (Catppuccin + Starship)

### 4.1 Shell / Prompt / Plugins

Aplicar tema visual e prompt moderno antes das linguagens ajuda a ter um ambiente mais legível.

```bash
# Dependências básicas (algumas já podem estar instaladas; se você acabou de executar a seção 3, zsh já está presente)
sudo apt update
command -v zsh >/dev/null || sudo apt install -y zsh
sudo apt install -y curl git unzip fontconfig wget python3

# Starship Prompt
curl -sS https://starship.rs/install.sh | sh -s -- -y
grep -q 'starship init zsh' ~/.zshrc || echo 'eval "$(starship init zsh)"' >> ~/.zshrc

# Config Catppuccin para Starship
mkdir -p ~/.config
curl -fsSL https://raw.githubusercontent.com/catppuccin/starship/refs/heads/main/starship.toml -o ~/.config/starship.toml

# Tema Catppuccin GNOME Terminal
curl -L https://raw.githubusercontent.com/catppuccin/gnome-terminal/v1.0.0/install.py | python3 - || true

## (Kubuntu/KDE) Tema Catppuccin para Konsole
# Apenas para Kubuntu/KDE. Instala e aplica os esquemas de cores Catppuccin no Konsole.
git clone --depth=1 https://github.com/catppuccin/konsole.git && \
mkdir -p ~/.local/share/konsole && \
cp konsole/themes/*.colorscheme ~/.local/share/konsole/ && \
rm -rf konsole

echo "Catppuccin + Starship instalados. Agora instale as fontes na seção 4.2."
```

### 4.2 Fonts (FiraCode Nerd + JetBrains Mono)

Instalação separada para facilitar remoção/atualização independente do tema.

```bash
mkdir -p ~/.local/share/fonts

# FiraCode Nerd Font
wget -O /tmp/firacode.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip
unzip -o /tmp/firacode.zip -d ~/.local/share/fonts/FiraCodeNerdFont
rm /tmp/firacode.zip

# JetBrains Mono
wget -O /tmp/jetbrainsmono.zip https://download.jetbrains.com/fonts/JetBrainsMono-2.304.zip
unzip -o /tmp/jetbrainsmono.zip -d ~/.local/share/fonts/JetBrainsMono
rm /tmp/jetbrainsmono.zip

# Atualiza cache e confirma
fc-cache -fv | grep -i "FiraCode\|JetBrains" || true

echo "Fonts instaladas. Ajuste no terminal/VS Code para 'FiraCode Nerd Font' ou 'JetBrains Mono'."
```

### 4.3 (Opcional) Ajustes VS Code

```
"terminal.integrated.fontFamily": "FiraCode Nerd Font",
"editor.fontFamily": "FiraCode Nerd Font, JetBrains Mono, monospace",
"editor.fontLigatures": true,
```

---

## 5. Node.js (NVM) + Ferramentas Globais

```bash
curl -fsSL https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

# Bloco NVM no ~/.zshrc (se ainda não existe)
grep -q 'NVM_DIR' ~/.zshrc || cat <<'EOF' >> ~/.zshrc
### >>> NVM <<<
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
### <<< FIM NVM >>>
EOF

source ~/.zshrc
nvm install 20.12.2
nvm alias default 20.12.2
nvm use 20.12.2
node -v
npm i -g yarn bun @google/gemini-cli
```

---

## 6. Python (pyenv + pipenv)

```bash
sudo apt update
sudo apt install -y build-essential zlib1g-dev libffi-dev libssl-dev liblzma-dev libbz2-dev libreadline-dev libsqlite3-dev
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

# Bloco pyenv no ~/.zshrc (se ainda não existe)
grep -q 'PYENV_ROOT' ~/.zshrc || cat <<'EOF' >> ~/.zshrc
### >>> PYENV <<<
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
alias python="python3"
### <<< FIM PYENV >>>
EOF

source ~/.zshrc
pyenv install 3.10
pyenv global 3.10
python --version
pip install --upgrade pip
pip install pipenv
pyenv versions
```

---

## 7. Docker Engine (Instalação Oficial)

Remoção de versões antigas e instalação limpa.

```bash
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt remove -y $pkg || true; done
sudo apt update
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo groupadd docker || true
sudo usermod -aG docker $USER
newgrp docker <<'INNEREOF'
docker run hello-world
docker version
docker compose version || docker-compose version || true
INNEREOF
```

---

## 8. Aplicativos Desktop (APT / Deb / Snap / Flatpak)

### 8.1 Navegadores & Essenciais

```bash
# Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb || sudo apt -f install -y

# Microsoft Edge
sudo apt remove -y microsoft-edge-stable || true
sudo rm -rf ~/.config/microsoft-edge || true
cd ~/Downloads
sudo curl -o microsoft-edge-stable.deb https://packages.microsoft.com/repos/edge/pool/main/m/microsoft-edge-stable/microsoft-edge-stable_121.0.2277.128-1_amd64.deb
sudo apt install -y ./microsoft-edge-stable.deb
```

### 8.2 Snap

```bash
sudo apt install -y snapd
sudo snap install code --classic
sudo snap install android-studio --classic
sudo snap install obsidian --classic
sudo snap install slack --classic
sudo snap install spotify
sudo snap install emote
sudo snap install postman
sudo snap install insomnia
sudo snap install beekeeper-studio
sudo snap install dbeaver-ce
sudo snap install bitwarden
```

### 8.3 Flatpak (Flathub)

```bash
sudo apt install -y flatpak gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub -y --noninteractive com.stremio.Stremio
flatpak install flathub -y --noninteractive com.uploadedlobster.peek
flatpak install flathub -y --noninteractive io.beekeeperstudio.Studio
flatpak install flathub -y --noninteractive io.dbeaver.DBeaverCommunity
flatpak install flathub -y --noninteractive org.flameshot.Flameshot
flatpak install flathub -y --noninteractive com.rtosta.zapzap
flatpak install flathub -y --noninteractive org.onlyoffice.desktopeditors
```

### 8.4 OBS Studio (PPA)

```bash
sudo apt update
sudo apt install -y ffmpeg
flatpak install flathub -y --noninteractive com.obsproject.Studio
# Definir o codificador de vídeo para Software x264 no OBS via linha de comando
```

---

## 9. Teleport (CLI)

```bash
curl https://goteleport.com/static/install-connect.sh | bash -s 16.4.15
```

---

## 10. Aumentar Swap (Exemplo 19G) (Opcional)

```bash
sudo swapoff /swapfile || true
sudo fallocate -l 19G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo sed -i '/\/swapfile/d' /etc/fstab
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
free -h
```

---

## 11. Correção Tecla Ç (Internacional) (.XCompose)

```bash
cat <<'EOF' > ~/.XCompose
include "%S/en_US.UTF-8/Compose"
<dead_acute> <C> : "Ç"
<dead_acute> <c> : "ç"
EOF
```

(Reinicie sessão X ou logout/login.)

---

## 12. Android / React Native (Java 17 + Watchman)

```bash
sudo apt update
sudo apt install -y openjdk-17-jdk watchman
readlink -f $(which java)

# Bloco Java / Android no ~/.zshrc (se ainda não existe)
grep -q 'ANDROID_HOME' ~/.zshrc || cat <<'EOF' >> ~/.zshrc
### >>> JAVA & ANDROID <<<
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
### <<< FIM JAVA & ANDROID >>>
EOF

source ~/.zshrc
# Instale SDK Android manualmente ou via Android Studio (Snap acima)
```

### 12.1 Aliases Úteis (Opcional)

```bash
# Adicionar aliases gerais e de React Native se ainda não presentes
grep -q 'alias rn-clean' ~/.zshrc || cat <<'EOF' >> ~/.zshrc
### >>> ALIASES GERAIS <<<
alias foo='echo "$(hostname)@$(whoami):$PWD"'
alias aliaslist='grep "^alias" ~/.zshrc | cut -d "=" -f 1 | cut -d " " -f 2'
alias node_modules_remove='find . -name "node_modules" -type d -prune -exec rm -rf '{}' +'
alias update='sudo apt-get update && sudo apt-get upgrade -y'
alias my_ip="ip -4 addr show wlp6s0 2>/dev/null | grep -oP '(?<=inet\\s)\\d+(?:\\.\\d+){3}'"
alias killport='f() { sudo kill -9 $(sudo lsof -t -i:$1); };f'
alias zshrc='code ~/.zshrc'

# React Native
alias rn-clean='rm -rf android/app/build android/.gradle android/build'
alias rn-hard-reset='rm -rf android/app/build android/.gradle android/build node_modules'
alias rn-build='yarn && yarn android && yarn start --reset-cache'

# Edição de vídeo (auto-editor)
alias auto-editor-file='f() { auto-editor $1 --export shotcut --margin 0.2sec --cut-out start,0.5sec; };f'
alias auto-editor-any='auto-editor *.mkv --export shotcut --margin 0.2sec --cut-out start,0.5sec'
### <<< FIM ALIASES GERAIS >>>
EOF

source ~/.zshrc
```

### 12.2 Aumentar limites do inotify (solução imediata)

Necessário para projetos com muitos arquivos (React Native, monorepos, Webpack, Watchman). Evita erros: "ENOSPC: System limit for number of file watchers reached".

```bash
# Ver valores atuais (opcional)
sysctl fs.inotify.max_user_watches fs.inotify.max_user_instances fs.inotify.max_queued_events

# Aumente para algo confortável (efeito imediato até reboot)
sudo sysctl -w fs.inotify.max_user_watches=524288
sudo sysctl -w fs.inotify.max_user_instances=8192
sudo sysctl -w fs.inotify.max_queued_events=65536

# Torne permanente
echo fs.inotify.max_user_watches=524288 | sudo tee /etc/sysctl.d/99-inotify.conf
echo fs.inotify.max_user_instances=8192  | sudo tee -a /etc/sysctl.d/99-inotify.conf
echo fs.inotify.max_queued_events=65536  | sudo tee -a /etc/sysctl.d/99-inotify.conf
sudo sysctl --system
```

> Caso já tenha adicionado no `/etc/sysctl.conf`, não há problema; apenas evite duplicar entradas. O método via `/etc/sysctl.d/99-inotify.conf` é mais limpo.

---

---

## 13. Extensões GNOME (Links)

Acesse no navegador e instale:

- System Monitor: https://extensions.gnome.org/extension/6807/system-monitor/
- Clipboard Indicator: https://extensions.gnome.org/extension/779/clipboard-indicator/
- Middle Click to Close: https://extensions.gnome.org/extension/352/middle-click-to-close-in-overview/
- Blur My Shell: https://extensions.gnome.org/extension/3193/blur-my-shell/
- X11 Gestures: https://extensions.gnome.org/extension/4033/x11-gestures/

---

## 14. GRUB (Ordem de Boot) (Opcional)

```bash
sudo cp /etc/default/grub /etc/default/grub.bak
sudo editor /etc/default/grub  # ou code /etc/default/grub
# Ajuste: GRUB_DEFAULT=4 (exemplo)
sudo update-grub
```

---

## 15. Modo Gráfico: Forçar Xorg (Desabilitar Wayland) (Opcional)

```bash
sudo cp /etc/gdm3/custom.conf /etc/gdm3/custom.conf.bak
sudo editor /etc/gdm3/custom.conf  # ou code /etc/gdm3/custom.conf
# Descomente e garanta: WaylandEnable=false
sudo systemctl restart gdm3  # (vai encerrar a sessão)
```

---

## 16. Gestos no X11 (touchegg) (Opcional)

```bash
sudo add-apt-repository -y ppa:touchegg/stable
sudo apt update
sudo apt install -y touchegg
systemctl status touchegg --no-pager
```

---

## 17. Variáveis de Ambiente / Tokens (Exemplo GitHub Packages)

```bash
echo 'export GITHUB_TOKEN="seu_token_aqui"' >> ~/.zshrc
source ~/.zshrc
```

---

## 18. Pós-Instalação / Verificações Rápidas

```bash
zsh --version
which zsh
git --version
node -v
python --version
docker run --rm hello-world
code --version || echo "VS Code via Snap ainda não aberto uma vez"
```

---

Boa instalação! 🚀
