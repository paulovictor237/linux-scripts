# 1. Verificar se a CPU suporta virtualização
egrep -c '(vmx|svm)' /proc/cpuinfo

# 2. Instalar o verificador de KVM
sudo apt-get install cpu-checker

# 3. Verificar se o KVM pode ser usado
sudo kvm-ok

# 4. Instalar o KVM e dependências (Ubuntu 18.10 ou mais recente)
sudo apt-get install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils

# 5. Adicionar o usuário aos grupos necessários
sudo adduser $USER libvirt
sudo adduser $USER kvm

# 6. Reiniciar o sistema (necessário para aplicar permissões)
# (Use o comando abaixo ou reinicie manualmente)
sudo reboot

# 7. Verificar se o KVM está ativo
lsmod | grep kvm
