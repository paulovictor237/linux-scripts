# jetbrains mono 
unzip assets/ttf.zip -d /tmp
cp -R /tmp/ttf/* ~/.local/share/fonts
fc-cache -f -v