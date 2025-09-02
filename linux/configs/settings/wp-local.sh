#!/bin/bash

# Lista de pacotes e seus URLs
declare -A packages=(
    ["libtinfo5_6.4-2_amd64"]="http://launchpadlibrarian.net/648013231/libtinfo5_6.4-2_amd64.deb"
    ["libncurses5_6.4-2_amd64"]="http://launchpadlibrarian.net/648013227/libncurses5_6.4-2_amd64.deb"
    ["libaio1_0.3.113-4_amd64"]="http://launchpadlibrarian.net/646633572/libaio1_0.3.113-4_amd64.deb"
)

# Baixar e instalar cada pacote
for package in "${!packages[@]}"; do
    echo "Baixando $package..."
    curl -O "${packages[$package]}"
    
    echo "Instalando $package..."
    sudo dpkg -i "$package.deb"
done

# Instalar libnss3-tools manualmente
echo "Instalando libnss3-tools..."
sudo apt install -y libnss3-tools

echo "Processo concluído!"

echo "installation: https://localwp.com/"

