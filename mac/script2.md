# Guia macOS Sequoia 15.5 — Setup de Desenvolvimento

## 0) Atualizações & Ferramentas Apple

```bash
brew update
brew upgrade
brew cleanup
```

---

## 1) Homebrew (gerenciador de pacotes)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
source ~/.zshrc

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

## 3) Zsh, Oh My Zsh & Zinit (plugins)

````bash
# Oh My Zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

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

---

# Instala o Starship

curl -sS https://starship.rs/install.sh | sh -s -- -y
echo 'eval "$(starship init zsh)"' >> ~/.zshrc
chsh -s $(which zsh)

# Aplica o preset do Catppuccin (sabor Latte) para o Starship

mkdir -p ~/.config && touch ~/.config/starship.toml
curl -sS https://raw.githubusercontent.com/catppuccin/starship/refs/heads/main/starship.toml -o ~/.config/starship.toml

---

## 8) Nerd Fonts (JetBrains Mono, Fira Code, Meslo)

```bash
brew install --cask font-jetbrains-mono-nerd-font
brew install --cask font-fira-code-nerd-font
brew install --cask font-meslo-lg-nerd-font
````

---

brew install neofetch

---

## 6) Docker

```bash
brew install docker
brew install colima
colima start
docker run hello-world
docker context ls
```

---

## 7) Apps de Trabalho (Homebrew Casks)

```bash
brew install --cask \
  microsoft-edge \
  google-chrome \
  whatsapp \
  slack \
  spotify \
  figma \
  \
  visual-studio-code \
  obsidian \
  android-studio \
  \
  postman \
  insomnia \
  \
  beekeeper-studio \
  dbeaver-community \
  \
  bitwarden \
  obs \
  stremio
```

---

brew install mise
echo 'eval "$(mise activate zsh)"' >> ~/.zshrc
eval "$(mise activate zsh)"
mise use -g node@22
node -v
mise use -g java@17
java -version
mise use -g python@3.10
python --version

# Pacotes globais

npm i -g yarn bun @google/gemini-cli

---

## 9) Variáveis de Ambiente (GitHub Packages, etc.)

```bash
# Exemplo: token para acessar pacotes privados
echo 'export GITHUB_TOKEN="coloque_seu_token_aqui"' >> ~/.zshrc
source ~/.zshrc
```

---

docker context ls → vê se está usando o colima socket.

colima status → confirma que a VM do Colima está rodando.

macos zsh: command not found: code
That error means your terminal doesn’t recognize the code command, which is used to launch Visual Studio Code from the command line. Here's how to fix it on macOS:

🛠️ Enable code Command in Zsh
Open Visual Studio Code.

Press Cmd + Shift + P to open the Command Palette.

Type and select: Shell Command: Install 'code' command in PATH

Restart your terminal (zsh) and try running code . again.

This adds the code command to your system’s PATH, making it accessible from any terminal session
