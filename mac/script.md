# Guia macOS Sequoia 15.5 — Setup de Desenvolvimento

> **Formato:** cada item traz **nome** e **comandos** para você copiar/colar. Execute **na ordem**.

---

## 0) Atualizações & Ferramentas Apple

```bash
# Atualizar o macOS (opcional)
softwareupdate -l
# Instalar ferramentas de linha de comando (necessário)
xcode-select --install
# (Apple Silicon) Instalar Rosetta 2 para apps Intel, se solicitado
softwareupdate --install-rosetta --agree-to-license
```

---

## 1) Homebrew (gerenciador de pacotes)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Adicionar o Homebrew ao PATH (Apple Silicon)
echo 'eval "$($(brew --prefix)/bin/brew shellenv)"' >> ~/.zprofile
source ~/.zprofile
brew update && brew doctor
```

---

## 2) Git & SSH (GitHub/Bitbucket)

```bash
# (Opcional) Instalar Git via Homebrew
brew install git

# Identidade Git
git config --global user.name "Seu Nome"
git config --global user.email "seu-email@exemplo.com"

# Chave SSH ED25519 (recomendado)
ssh-keygen -t ed25519 -C "seu-email@exemplo.com"
# Agente SSH
eval "$(ssh-agent -s)"
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
# Exibir a chave pública para colar no GitHub/Bitbucket
cat ~/.ssh/id_ed25519.pub

# Testar acesso (responda YES na primeira vez)
ssh -T git@github.com
ssh -T git@bitbucket.org
```

---

## 3) Zsh, Oh My Zsh & Zinit (plugins)

```bash
# Oh My Zsh
env ZSH=~/.oh-my-zsh sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Zinit (gerenciador de plugins)
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

# Plugins essenciais via Zinit (adicione ao final do seu ~/.zshrc)
cat >> ~/.zshrc <<'EOF'
### Zinit Plugins
zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
### Fim Zinit Plugins
EOF

# Aplicar alterações
source ~/.zshrc
# (Opcional) Tornar zsh o shell padrão
chsh -s $(which zsh)
```

---

## 4) Node.js (NVM), Yarn, Bun, CLIs

```bash
# NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
# Carregar NVM no shell atual
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
echo '[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"' >> ~/.zshrc
# (Apple Silicon) fallback para o path padrão do instalador
echo '[ -s "$HOME/.nvm/nvm.sh" ] && . "$HOME/.nvm/nvm.sh"' >> ~/.zshrc
source ~/.zshrc

# Node LTS e padrão
nvm install v20.12.2
nvm alias default v20.12.2
nvm use v20.12.2

# Pacotes globais
npm i -g yarn @google/gemini-cli

# Bun (runtime JS/TS alternativo)
curl -fsSL https://bun.sh/install | bash
# Disponibilizar Bun imediatamente
export BUN_INSTALL="$HOME/.bun" && export PATH="$BUN_INSTALL/bin:$PATH"

# Verificar versões
node -v && npm -v && yarn -v && bun -v
```

---

## 5) Python (pyenv) & Pipenv

```bash
# Dependências e pyenv
brew install pyenv openssl readline sqlite xz zlib tcl-tk

# Ativar pyenv no Zsh
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
source ~/.zshrc

# Instalar e usar Python 3.10
pyenv install 3.10.13
pyenv global 3.10.13

# Pip e Pipenv
python3 -m pip install --upgrade pip
pip install pipenv

# Conferir versões
python --version && pip --version && pipenv --version
```

---

## 6) Docker

```bash
brew install --cask docker
open -a Docker
# Após o Docker iniciar
docker run hello-world
```

---

## 7) Apps de Trabalho (Homebrew Casks)

```bash
brew install --cask \
  visual-studio-code android-studio obsidian slack spotify postman insomnia \
  beekeeper-studio dbeaver-community bitwarden google-chrome microsoft-edge \
  copyq kap shottr obs stremio whatsapp
```

---

## 8) Nerd Fonts (JetBrains Mono, Fira Code, Meslo)

```bash
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font
brew install --cask font-fira-code-nerd-font
brew install --cask font-meslo-lg-nerd-font
```

---

## 9) Variáveis de Ambiente (GitHub Packages, etc.)

```bash
# Exemplo: token para acessar pacotes privados
echo 'export GITHUB_TOKEN="coloque_seu_token_aqui"' >> ~/.zshrc
source ~/.zshrc
```

---

## 10) Mobile — Android (Android Studio + SDK)

```bash
# JDK 17 (recomendado para Android)
brew install --cask temurin17
# Garantir JAVA_HOME para o JDK 17
echo 'export JAVA_HOME="$(/usr/libexec/java_home -v 17)"' >> ~/.zshrc
source ~/.zshrc

# Android Studio (SDK/AVD via GUI)
brew install --cask android-studio
open -a "Android Studio"
# > Instale: SDK Platform, Platform Tools, Build-Tools, Command-line Tools (SDK Manager)

# Variáveis Android SDK
echo 'export ANDROID_HOME="$HOME/Library/Android/sdk"' >> ~/.zshrc
cat >> ~/.zshrc <<'EOF'
export PATH="$ANDROID_HOME/platform-tools:$PATH"
export PATH="$ANDROID_HOME/emulator:$PATH"
export PATH="$ANDROID_HOME/cmdline-tools/latest/bin:$PATH"
export PATH="$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$PATH"
EOF
source ~/.zshrc

# Aceitar licenças (após instalar Command-line Tools)
yes | sdkmanager --licenses || true

# Watchman (melhora RN/Metro)
brew install watchman

# Verificações
adb version
adb devices
emulator -list-avds || true
```

---

## 11) Mobile — iPhone (Xcode + Simulador)

```bash
# Xcode (instale via App Store)
open -a "App Store" https://apps.apple.com/app/xcode/id497799835
# Após instalar, aceite os termos e componentes
sudo xcodebuild -license accept || true
sudo xcode-select -s /Applications/Xcode.app

# Simulador iOS
open -a Simulator
xcrun simctl list devices

# CocoaPods para projetos iOS (React Native, etc.)
sudo gem install cocoapods
pod --version
```

---

## 12) React Native — Verificação Rápida (por projeto)

```bash
# Dentro do diretório do seu app RN
npx react-native doctor
# iOS: instalar pods (no diretório ios/)
cd ios && pod install && cd -
# Android: gradle wrapper inicial (primeiro build via Android Studio é recomendado)
```

---

## 13) Utilitários de Captura & Clipboard (opcionais)

```bash
brew install --cask copyq shottr kap
```

---

## 14) Conferência Final

```bash
# Checagens gerais
brew --version
zsh --version
git --version
node -v && npm -v && yarn -v && bun -v
python --version && pip --version && pipenv --version
docker --version
adb version || true
xcrun simctl list devices | head -n 20
```

---

> **Observação:** Este guia adapta o conteúdo original (Ubuntu) para macOS, removendo partes específicas de Linux (Snap/Flatpak, GNOME, GRUB, swapfile, Wayland, etc.) e substituindo por equivalentes nativos do macOS.
