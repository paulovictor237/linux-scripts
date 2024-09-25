# jetbrains mono 
unzip ./linux/assets/ttf.zip -d /tmp
mkdir ~/.local/share/fonts
cp -R /tmp/ttf/* ~/.local/share/fonts
fc-cache -f -v