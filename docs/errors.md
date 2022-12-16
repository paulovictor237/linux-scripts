# Errors

# Reset GNOME Desktop Settings to Factory Default on Ubuntu

Reset completo: `dconf reset -f /org/gnome/`

Instalar dconf: `sudo apt update ; sudo apt install dconf-editor`

```bash
dconf dump / > full-backup # full backup
dconf load / < full-backup # full restore
```

# Discord black screen

[https://askubuntu.com/questions/1341208/screen-share-show-black-screen-after-upgrade-from-ubuntu-20-10-to-21-04](https://askubuntu.com/questions/1341208/screen-share-show-black-screen-after-upgrade-from-ubuntu-20-10-to-21-04)

```jsx
sudoedit /etc/gdm3/custom.conf
//Uncomment the line
#WaylandEnable=false
//and save the change. This will enable the Xorg display manager.
sudo systemctl restart gdm3
```

# Bluetooth Ubuntu 22.04

[https://launchpad.net/ubuntu/+source/linux-firmware/1.201](https://launchpad.net/ubuntu/+source/linux-firmware/1.201)

```jsx
sudo cp -R ar3k /lib/firmware
```

# Live Share vscode - Ubuntu 22.04

```jsx
wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.0g-2ubuntu4_amd64.deb
sudo dpkg -i libssl1.1_1.1.0g-2ubuntu4_amd64.deb
```

# Pulseaudio - trocar entre headphone e speakers

- `alsamixer` + `PulseAudio Volume Control`
  To make it possible to switch between speakers and headphones, follow these steps:

  1. Run `alsamixer`.
  2. If necessary, select your sound card with .

     F6

  3. Navigate to “Auto-Mute” with the right arrow .

     →

  4. Disable it with the down arrow .

     ↓

  5. Press  to exit.

     Esc
     Or you can do all these steps with one command:

  6. Open terminal
  7. run `amixer -c 1 set 'Auto-Mute Mode' Disabled`
     Now you can change between speakers and headphones in the PulseAudio Volume Control.
     After applying these instructions you can make your life easier by using [Sound Switcher Indicator](https://github.com/yktoo/indicator-sound-switcher) to quickly switch between headphones and speakers.

# Dual monitor workspaces in Ubuntu 18.04

Had the same problem. Turned out it was super easy to fix.

Install the GNOME Tweaks app. Go to **Workspaces** and set **Display handling** to **Workspaces span displays**. Done!

# VLC - Abrindo duas janelas

`Tools> Preferences > Video > Output to "X11 video output”`

[Opening a video file with VLC opens two seprate windwos(screenshot included)](https://www.linux.org/threads/opening-a-video-file-with-vlc-opens-two-seprate-windwos-screenshot-included.34753/)

# Ubuntu trava na iniciação

**["dev/sda1: clean, ..." This message appears after I startup my laptop, then it won't continue booting](https://askubuntu.com/questions/882385/dev-sda1-clean-this-message-appears-after-i-startup-my-laptop-then-it-w)**

`dev/sda1: clean, 552599/6111232 files, 7119295/24414464 blocks` Tela bloqueada nessa mensagem

`sudo apt-get purge nvidia*` ; `sudo ubuntu-drivers autoinstall`

# Permisão de read/write para o hard-disc

1. `lsblk` → lista todos os hard-disc
   `sudo chmod ugo+wx /media/username/your_drive`→ Permisão de read/write para o hard-disc
2. `chmod u=rwx,g=rx,o=r myfile`
3. `chmod a=rwx myfile` ou `chmod 777 myfile`

# Abrir o Grub ao iniciar o comutador

[How to get to the GRUB menu at boot-time?](https://askubuntu.com/questions/16042/how-to-get-to-the-grub-menu-at-boot-time)

# How to remove icons/shortcuts from Unity menu?

- `/usr/share/applications`
- `/usr/local/share/applications`
- `~/.local/share/applications`

# How to make partitions mount at startup?

[How to make partitions mount at startup?](https://askubuntu.com/questions/164926/how-to-make-partitions-mount-at-startup)

# **How to Set Nemo as Default File Manager in Ubuntu**

set nemo as default

`gsettings set org.gnome.desktop.background show-desktop-icons falsexdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search`

set nautilus as default

`gsettings set org.gnome.desktop.background show-desktop-icons truexdg-mime default nautilus.desktop inode/directory application/x-gnome-saved-search`

[https://sourcedigit.com/13826-set-nemo-default-file-manager-ubuntu/](https://sourcedigit.com/13826-set-nemo-default-file-manager-ubuntu/)

# Pop-Os Gnome extensions

`sudo apt install gnome-shell-extensions`

[https://github.com/pop-os/pop/issues/85](https://github.com/pop-os/pop/issues/85)

# Conflicts: nodejs : Conflicts: nodejs-doc libnode64

**ubuntu: `nodejs` conflicts with package `nodejs-doc`**

**Can't install through apt in Pop!\_OS 21.04**

`udo apt --fix-broken install nodejs-doc libnode72`

`udo apt purge nodejs nodejs-doc`

`sudo apt install nodejs`

# VSCode Remove White File Menu on Linux

Just found an answer to this thanks to [this post](https://stackoverflow.com/questions/51832770/change-visual-studio-codes-title-bar-color)

1. In the File menu, select *File -> Preferences -> Settings*
2. Search for `window.titlebarstyle`
3. Change `Window: Title Bar Style` to `custom`

**[VSCode Remove White File Menu on Linux](https://stackoverflow.com/questions/64344700/vscode-remove-white-file-menu-on-linux)**

# CEDILHA "Ç" SAINDO COMO "Ć" EM TECLADO US-INTERNATIONAL [RESOLVIDO]

`nano **~/.XCompose**`

```bash
include "%S/en_US.UTF-8/Compose"
<dead_acute> <C> : "Ç"
<dead_acute> <c> : "ç"
```

# Not able to change the Nvidia driver in ubuntu 20.04

[https://askubuntu.com/questions/1237590/not-able-to-change-the-nvidia-driver-in-ubuntu-20-04](https://askubuntu.com/questions/1237590/not-able-to-change-the-nvidia-driver-in-ubuntu-20-04)

`sudo ubuntu-drivers autoinstall`

# Delete a package from sudo apt update

```bash
cd /etc/apt/sources.list.d/
sudo rm nodesource.list yarn.list
```

[permissions - Unable to edit /etc/apt/sources.list file - Ask Ubuntu](https://askubuntu.com/questions/332669/unable-to-edit-etc-apt-sources-list-file)
