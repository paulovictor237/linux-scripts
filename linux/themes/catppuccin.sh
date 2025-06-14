#!/bin/bash

# -----------------------------------------------------------------------------
# Script para Instalação do Starship com tema Catppuccin para Zsh no Ubuntu
#
# Requisitos: apt, curl, git, unzip
# O script irá:
# 1. Instalar o Zsh.
# 2. Instalar a fonte 'FiraCode Nerd Font' para ícones.
# 3. Instalar o Starship, um prompt customizável.
# 4. Configurar o Starship com o tema Catppuccin (Latte).
# 5. Definir o Zsh como shell padrão.
#
# AVISO: Ao final, você precisará reiniciar a sessão (logout/login) e
# definir manualmente a 'FiraCode Nerd Font' nas configurações do seu terminal.
# -----------------------------------------------------------------------------

# Atualiza a lista de pacotes e instala dependências essenciais
sudo apt update
sudo apt install -y zsh curl git unzip

# Instala a Nerd Font (FiraCode)
echo "Baixando e instalando FiraCode Nerd Font..."
FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.zip"
FONT_DIR="$HOME/.local/share/fonts"
TEMP_DIR="/tmp/firacode-font"

mkdir -p "$FONT_DIR"
mkdir -p "$TEMP_DIR"

curl -fLo "$TEMP_DIR/FiraCode.zip" "$FONT_URL"
unzip -o "$TEMP_DIR/FiraCode.zip" -d "$TEMP_DIR"
cp "$TEMP_DIR"/*.ttf "$FONT_DIR/"

rm -rf "$TEMP_DIR"

echo "Atualizando o cache de fontes..."
fc-cache -f -v

# Instala o Starship
echo "Instalando Starship..."
curl -sS https://starship.rs/install.sh | sh -s -- -y

# Configura o Zsh para iniciar o Starship
echo 'eval "$(starship init zsh)"' >> ~/.zshrc

# Cria o diretório de configuração do Starship se não existir
mkdir -p ~/.config

# Aplica o preset do Catppuccin (sabor Latte) para o Starship
# Outros sabores: catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
echo "Configurando o tema Catppuccin (Latte)..."
mkdir -p ~/.config && touch ~/.config/starship.toml
curl -sS https://raw.githubusercontent.com/catppuccin/starship/refs/heads/main/starship.toml -o ~/.config/starship.toml 

# Define Zsh como o shell padrão do usuário atual
echo "Definindo Zsh como shell padrão..."
chsh -s $(which zsh)

# Instala o tema Catppuccin para o GNOME Terminal
echo "Instalando tema Catppuccin para GNOME Terminal..."
curl -L https://raw.githubusercontent.com/catppuccin/gnome-terminal/v1.0.0/install.py | python3 -


echo "-----------------------------------------------------------------------"
echo "Instalação concluída!"
echo "Por favor, reinicie sua sessão (faça logout e login novamente)."
echo "Depois, abra seu terminal, vá em Preferências -> Perfil -> Fonte e"
echo "selecione 'FiraCode Nerd Font' ou 'FiraMono Nerd Font'."
echo "-----------------------------------------------------------------------"

# VSCODE SETTINGS (opcional)
# "terminal.integrated.fontFamily": "'FiraCode Nerd Font'",
# "editor.fontFamily": "'FiraCode Nerd Font'",
# "editor.fontLigatures": true,


