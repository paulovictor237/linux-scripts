sudo apt install -y neovim
Make a backup of your current Neovim files:

# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

Clone the starter

git clone https://github.com/LazyVim/starter ~/.config/nvim

Remove the .git folder, so you can add it to your own repo later

rm -rf ~/.config/nvim/.git

Start Neovim!

nvim

echo "Installing WezTerm terminal emulator..."
# Download and install WezTerm from GitHub releases
flatpak install flathub org.wezfurlong.wezterm


# Basic Neovim Instructions

echo "Basic Neovim Usage Instructions:"
echo "------------------------------"
echo "- Press 'i' to enter insert mode"
echo "- Press 'Esc' to return to normal mode"
echo "- In normal mode, ':w' saves the file"
echo "- In normal mode, ':q' quits Neovim"
echo "- In normal mode, ':wq' saves and quits"
echo "- Use 'hjkl' keys for navigation in normal mode"
echo "- Press ':help' for more detailed help"
echo ""
echo "LazyVim will start installing plugins on first run."
echo "Wait for the process to complete before using Neovim."
echo ""
echo "Enjoy your new Neovim setup!"