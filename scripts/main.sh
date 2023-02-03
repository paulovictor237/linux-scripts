#!/usr/bin/env bash

echo "--------------- Iniciando instalação ---------------"

# install
cd install
bash apps.sh
bash extension.sh
bash flatpak.sh
bash snap.sh
cd zsh
bash dev.sh
# settings
cd ../..
cp settins/.XCompose ~/

echo "--------------- Instalação completa ----------------"
