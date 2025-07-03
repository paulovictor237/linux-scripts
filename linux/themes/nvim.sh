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
curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
echo "deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *" | sudo tee /etc/apt/sources.list.d/wezterm.list
sudo apt update
sudo apt install wezterm

# local wezterm = require 'wezterm'

# return {
#   -- Set the Catppuccin Mocha color scheme
#   color_scheme = "Catppuccin Mocha",
  
#   -- Optional: Additional configuration
#   font_size = 12.0,
#   enable_tab_bar = true,
#   hide_tab_bar_if_only_one_tab = true,
  
#   -- Window configuration
#   window_background_opacity = 0.95,
#   text_background_opacity = 1.0,
  
#   -- Disable the title bar but keep resizable border
#   window_decorations = "RESIZE",

# }

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