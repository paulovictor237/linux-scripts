#!/usr/bin/env bash

echo "--------------- Iniciando instalação ---------------"

# install
cd install
bash apps.sh
bash dev.sh
bash snap.sh
bash flatpak.sh
cd -

# settings
cp settins/.XCompose ~/
dconf load / < settins/full-bkp # full restore

echo "--------------- Instalação completa ----------------"
echo "--------------------- REBOOT -----------------------"
