# Guia macOS — Setup de Desenvolvimento

## Homebrew (gerenciador de pacotes)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

```bash
brew update
brew upgrade
brew cleanup
```

---

## Zsh, Oh My Zsh & Zinit (plugins)

```bash
# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

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
```

---

## Nerd Fonts (JetBrains Mono, Fira Code, Meslo)

```bash
brew install --cask font-jetbrains-mono-nerd-font
brew install --cask font-fira-code-nerd-font
brew install --cask font-meslo-lg-nerd-font
```

---

## Git & SSH (GitHub/Bitbucket)

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

## Variáveis de Ambiente (GitHub Packages, etc.)

```bash
# Exemplo: token para acessar pacotes privados
echo 'export GITHUB_TOKEN="coloque_seu_token_aqui"' >> ~/.zshrc
source ~/.zshrc
```

---

## Mise (Node, Python, Java)

```bash
brew install mise
echo 'eval "$(mise activate zsh)"' >> ~/.zshrc
eval "$(mise activate zsh)"

# Instalar runtimes
mise use -g node@latest
mise use -g python@latest
mise use -g java@17

# Verificar
mise ls
```

---

## Android Studio

```bash
# Watchman — necessário para o Metro Bundler monitorar arquivos
brew install watchman

# Instalar Android Studio via Homebrew
brew install --cask android-studio

# Adicionar variáveis de ambiente ao ~/.zshrc
cat >> ~/.zshrc <<'EOF'

# Android SDK configuration
export JAVA_HOME=$(mise where java@17)
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

EOF
source ~/.zshrc

# Verificar
java -version
```

> Ou baixe o Android Studio diretamente pelo site oficial:
> [https://developer.android.com/studio?hl=pt-br](https://developer.android.com/studio?hl=pt-br)

---

## Xcode 26.3 (Apple Silicon)

> Baixe o `.xip` diretamente em [xcodereleases.com](https://xcodereleases.com/) — filtre por **Apple Silicon** e versão **26.3**.

```bash
# Após o download, extraia e mova para /Applications
xip --expand Xcode_26.3.xip
mv Xcode.app /Applications/

# Aceitar licença e instalar componentes
sudo xcodebuild -license accept
xcodebuild -runFirstLaunch

# Selecionar o Xcode correto
sudo xcode-select -s /Applications/Xcode.app/Contents/Developer

# Verificar
xcodebuild -version
```

---

## Editors & Apps de Trabalho (Homebrew Casks)

```bash
# Editors
brew install --cask visual-studio-code zed

# VS Code: habilitar `code` no terminal
# Cmd + Shift + P → "Shell Command: Install 'code' command in PATH"

echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc

# Navegadores
brew install --cask microsoft-edge google-chrome arc
# Comunicação
brew install --cask microsoft-teams whatsapp
# Docker
brew install --cask orbstack
# Launcher & Tweaks
brew install --cask raycast scroll-reverser middleclick
# Notas & Música
brew install --cask obsidian spotify
# Produtividade
brew install --cask ticktick
# API Clients
brew install --cask postman
# Banco de Dados
brew install --cask beekeeper-studio
# Streaming & Gravação
brew install --cask obs-studio
# Utilitários & Limpeza
brew install mole
brew install --cask pearcleaner appcleaner
# Teleport
brew install --cask teleport-connect

# Vídeo
brew install --cask losslesscut shutter-encoder vlc
```

---

## Utilitários CLI

```bash
brew install neofetch gh acli gemini-cli
curl -fsSL https://claude.ai/install.sh | bash
```

---
