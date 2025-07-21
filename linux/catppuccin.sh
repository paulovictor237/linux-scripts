# Atualiza a lista de pacotes e instala dependências essenciais
sudo apt update
sudo apt install -y zsh curl git unzip

# Instala o Starship
curl -sS https://starship.rs/install.sh | sh -s -- -y
echo 'eval "$(starship init zsh)"' >> ~/.zshrc
chsh -s $(which zsh)

# Aplica o preset do Catppuccin (sabor Latte) para o Starship
mkdir -p ~/.config && touch ~/.config/starship.toml
curl -sS https://raw.githubusercontent.com/catppuccin/starship/refs/heads/main/starship.toml -o ~/.config/starship.toml 

# Instala o tema Catppuccin para o GNOME Terminal
curl -L https://raw.githubusercontent.com/catppuccin/gnome-terminal/v1.0.0/install.py | python3 -
# 
# Instala a Nerd Font (FiraCode)
mkdir -p ~/.local/share/fonts
wget -O /tmp/firacode.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip
unzip /tmp/firacode.zip -d ~/.local/share/fonts/FiraCodeNerdFont
rm /tmp/firacode.zip
fc-cache -fv

# Instala a JetBrains Mono Font
wget -O /tmp/jetbrainsmono.zip https://download.jetbrains.com/fonts/JetBrainsMono-2.304.zip
unzip /tmp/jetbrainsmono.zip -d ~/.local/share/fonts/JetBrainsMono
rm /tmp/jetbrainsmono.zip
fc-cache -fv

# VSCODE SETTINGS (opcional)
# "terminal.integrated.fontFamily": "'FiraCode Nerd Font'",
# "editor.fontFamily": "'FiraCode Nerd Font'",
# "editor.fontLigatures": true,
