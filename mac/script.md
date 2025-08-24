# Guia Manual — Setup de Desenvolvimento no macOS Sequoia 15.5

> **Como usar**: cada seção abaixo contém **apenas comandos**. Copie e cole no Terminal conforme sua necessidade. Itens opcionais estão marcados como *(opcional)*. Onde houver caminhos diferentes para Apple Silicon (ARM) e Intel, siga o bloco indicado.

---

## 0) Pré‑requisitos do sistema

### 0.1 Verificar arquitetura (Apple Silicon vs Intel)

```bash
uname -m
# arm64 = Apple Silicon | x86_64 = Intel
```

### 0.2 (Apple Silicon) Instalar Rosetta 2 *(se pedir)*

```bash
softwareupdate --install-rosetta --agree-to-license
```

### 0.3 Xcode Command Line Tools

```bash
xcode-select --install
```

---

## 1) Homebrew (gestor de pacotes)

### 1.1 Instalar Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 1.2 Colocar o `brew` no PATH

**Apple Silicon (arm64)**

```bash
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
source ~/.zprofile
```

**Intel (x86\_64)**

```bash
echo 'eval "$(/usr/local/bin/brew shellenv)"' >> ~/.zprofile
source ~/.zprofile
```

### 1.3 Atualizar Homebrew

```bash
brew update && brew upgrade
```

---

## 2) Git & SSH

### 2.1 Git

```bash
brew install git
```

### 2.2 Configuração do Git

```bash
git config --global user.name "seu_nome"
git config --global user.email "seu_email@example.com"
```

### 2.3 Criar chave SSH (recomendado ed25519)

```bash
ssh-keygen -t ed25519 -C "seu_email@example.com"
eval "$(ssh-agent -s)"
ssh-add --apple-use-keychain ~/.ssh/id_ed25519  # macOS integra com o Keychain
```

*(Alternativa compatível com o script original — RSA 4096)*

```bash
ssh-keygen -t rsa -b 4096 -C "seu_email@example.com"
ssh-add --apple-use-keychain ~/.ssh/id_rsa
```

### 2.4 Copiar a chave pública para colar no GitHub/Bitbucket

```bash
cat ~/.ssh/id_ed25519.pub
# ou
cat ~/.ssh/id_rsa.pub
```

### 2.5 Testar acesso

```bash
ssh -T git@github.com
ssh -T git@bitbucket.org
```

---

## 3) Zsh + Plugins

### 3.1 (oh-my-zsh)

```bash
export RUNZSH=no
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 3.2 (opcional) Zinit

```bash
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
```

### 3.3 Recarregar shell

```bash
exec zsh -l
```

---

## 4) Node.js (NVM), Yarn e Bun

### 4.1 NVM

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.zshrc
```

### 4.2 Node 20.x (seguir o script original)

```bash
nvm install v20.12.2
nvm alias default v20.12.2
nvm use v20.12.2
```

### 4.3 Pacotes globais

```bash
npm i -g yarn bun @google/gemini-cli
nvm list
```

*(Alternativa Bun via Homebrew)*

```bash
brew install bun
```

---

## 5) Python (pyenv) + Pipenv

### 5.1 Dependências de build

```bash
brew install pyenv openssl readline sqlite3 xz zlib tcl-tk
```

### 5.2 Variáveis recomendadas para builds de Python

```bash
# Ajusta caminhos para libs do Homebrew (Apple Silicon)
echo 'export LDFLAGS="-L/opt/homebrew/opt/zlib/lib -L/opt/homebrew/opt/sqlite/lib -L/opt/homebrew/opt/readline/lib -L/opt/homebrew/opt/openssl@3/lib"' >> ~/.zprofile
echo 'export CPPFLAGS="-I/opt/homebrew/opt/zlib/include -I/opt/homebrew/opt/sqlite/include -I/opt/homebrew/opt/readline/include -I/opt/homebrew/opt/openssl@3/include"' >> ~/.zprofile
source ~/.zprofile
```

*(Para Intel, troque `/opt/homebrew` por `/usr/local` caso necessário.)*

### 5.3 Instalar e escolher Python 3.10.x

```bash
pyenv install 3.10.14
pyenv global 3.10.14
python3 -V
```

### 5.4 Pip e Pipenv

```bash
python3 -m pip install --upgrade pip
pip install pipenv
pyenv versions
```

---

## 6) Docker Desktop

### 6.1 Instalar Docker Desktop

```bash
brew install --cask docker
open -a Docker
```

### 6.2 Testar

```bash
docker run hello-world
```

---

## 7) Aplicativos (Homebrew Casks)

### 7.1 IDEs e utilitários de dev

```bash
brew install --cask visual-studio-code android-studio postman insomnia beekeeper-studio dbeaver-community bitwarden copyq
```

### 7.2 Navegadores

```bash
brew install --cask google-chrome microsoft-edge
```

### 7.3 Produtividade

```bash
brew install --cask obsidian slack spotify stremio
```

### 7.4 OBS Studio e FFmpeg

```bash
brew install --cask obs
brew install ffmpeg
```

---

## 8) Teleport (goteleport)

```bash
brew install teleport
```

---

## 9) React Native — macOS

### 9.1 iOS — Xcode & CocoaPods

```bash
# Instale o Xcode (App Store) e abra uma vez para concluir componentes
# Em seguida:
xcode-select --switch /Applications/Xcode.app/Contents/Developer
sudo xcodebuild -license accept
brew install cocoapods
pod --version
```

### 9.2 Watchman

```bash
brew install watchman
```

### 9.3 Java 17 (Temurin)

```bash
brew install --cask temurin@17
/usr/libexec/java_home -V
```

### 9.4 Android — SDK & variáveis de ambiente

```bash
# 1) Instale o Android Studio (já instalado acima)
# 2) Abra o Android Studio > SDK Manager e instale:
#    - Android SDK Platform (API mais recente)
#    - Android SDK Platform-Tools
#    - Android SDK Build-Tools
#    - Android Emulator
#    - Android System Images (para o simulador)
# 3) Exporte variáveis (ajuste o caminho se necessário):

# Apple Silicon (arm64)
echo 'export ANDROID_HOME="$HOME/Library/Android/sdk"' >> ~/.zprofile
echo 'export PATH="$ANDROID_HOME/emulator:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$PATH"' >> ~/.zprofile

# Intel (x86_64) — normalmente igual ao acima
# Se usar caminho customizado, ajuste ANDROID_HOME para o local correto

source ~/.zprofile

# 4) Aceitar licenças (com SDK CLI instalado)
yes | "$ANDROID_HOME"/cmdline-tools/latest/bin/sdkmanager --licenses || true
```

### 9.5 Criar projeto React Native (exemplo)

```bash
# Node já instalado via NVM
npx react-native@latest init MeuApp
cd MeuApp
```

### 9.6 Executar no iOS Simulator

```bash
npm run ios
# ou
npx react-native run-ios
```

### 9.7 Executar no Android Emulator

```bash
npm run android
# ou
npx react-native run-android
```

---

## 10) Acesso a Packages Privados do GitHub (PX Design System)

### 10.1 GitHub CLI *(opcional, recomendado)*

```bash
brew install gh
gh auth login
```

### 10.2 Token de leitura de packages (alternativa direta)

```bash
echo 'export GITHUB_TOKEN=SEU_TOKEN_COM_read:packages' >> ~/.zshrc
source ~/.zshrc
```

---

## 11) Verificações rápidas

```bash
# Git
git --version

# Node / NPM / Yarn / Bun
node -v
npm -v
yarn -v
bun -v

# Python / Pipenv
python3 -V
pipenv --version

# Docker
docker --version

# React Native (CLI)
npx react-native --version

# CocoaPods / Watchman
pod --version
watchman --version
```

---

## 12) Itens do script original removidos por serem específicos de Linux

* `apt`, `snap`, `flatpak`, GRUB, GDM/Wayland, GNOME extensions e ajustes de swap/teclado foram omitidos por não se aplicarem ao macOS.
