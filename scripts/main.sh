#!/usr/bin/env bash

echo "--------------- Iniciando instalação ---------------"

# install
bash install/apps.sh
bash install/dev.sh
bash install/snap.sh
bash install/flatpak.sh
bash install/jetbrains.sh
bash install/extension.sh

# settings
cp assets/.XCompose ~/
dconf load / < settins/full-bkp # full restore

echo "--------------- Instalação completa ----------------"
echo "--------------------- REBOOT -----------------------"
