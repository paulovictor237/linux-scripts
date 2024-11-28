# https://github.com/Jacksaur/Gorgeous-GRUB

# Mova o tema para o local correto
sudo mkdir -p /boot/grub/themes
sudo nautilus /boot/grub/themes
# mv <CAMINHO_DO_TEMA> /boot/grub/themes/bigsur

# Edite o arquivo de configuracao do GRUB
xrandr | grep '*' | awk '{print $1}' # obter minha resolução
code /etc/default/grub #sudoedit
GRUB_THEME="/boot/grub/themes/bigsur/theme.txt"
GRUB_GFXMODE=2560x1080 #1920x1080 # sua resolução

# Atualize o GRUB
sudo update-grub
sudo reboot

