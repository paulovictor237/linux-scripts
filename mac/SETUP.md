# Guia macOS — Setup de Desenvolvimento

## Homebrew (gerenciador de pacotes)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Atualizações & Ferramentas Apple

```bash
brew update
brew upgrade
brew cleanup
```

---

## Utilitários CLI

```bash
brew install neofetch gh acli watchman
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

## Starship Prompt + Catppuccin

```bash
# Instalar Starship
curl -sS https://starship.rs/install.sh | sh -s -- -y
echo 'eval "$(starship init zsh)"' >> ~/.zshrc
chsh -s $(which zsh)

# Aplicar preset Catppuccin (Latte)
mkdir -p ~/.config && touch ~/.config/starship.toml
curl -sS https://raw.githubusercontent.com/catppuccin/starship/refs/heads/main/starship.toml -o ~/.config/starship.toml
```

---

## Nerd Fonts (JetBrains Mono, Fira Code, Meslo)

```bash
brew install --cask font-jetbrains-mono-nerd-font
brew install --cask font-fira-code-nerd-font
brew install --cask font-meslo-lg-nerd-font
```

---

## Mise (Node, Python)

```bash
brew install mise
echo 'eval "$(mise activate zsh)"' >> ~/.zshrc
eval "$(mise activate zsh)"

# Instalar runtimes
mise use -g node@latest
mise use -g python@latest

# Verificar
mise ls
node -v
python --version
```

---

## Apps de Trabalho (Homebrew Casks)

```bash
# Navegadores
brew install --cask microsoft-edge google-chrome arc

# Comunicação
brew install --cask microsoft-teams

# Docker
brew install --cask orbstack

# Launcher & Tweaks
brew install --cask raycast scroll-reverser middleclick

# Notas & Música
brew install --cask obsidian spotify

# API Clients
brew install --cask postman

# Banco de Dados
brew install --cask datagrip

# Utilitários & Limpeza
brew install --cask appcleaner

# Teleport
brew install --cask teleport-connect
```

---

## Variáveis de Ambiente (GitHub Packages, etc.)

```bash
# Exemplo: token para acessar pacotes privados
echo 'export GITHUB_TOKEN="coloque_seu_token_aqui"' >> ~/.zshrc
source ~/.zshrc
```

---

## VS Code — Habilitar `code` no Zsh

Caso veja o erro `macos zsh: command not found: code`:

1. Abra o VS Code.
2. Pressione **Cmd + Shift + P** → digite e selecione:
   `Shell Command: Install 'code' command in PATH`.
3. Reinicie o terminal (`zsh`).

Agora o comando `code .` funcionará em qualquer pasta.
