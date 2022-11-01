# +-------------------------- Minhas Configuracoes ----------------------------+
#           ╔══════════════════════════════════════════════════╗
#           ║  Copyright (C) 2020 Paulo Victor Duarte          ║
#           ║  Atalhos e comandos para auxiliar no uso do ROS  ║
#           ╚══════════════════════════════════════════════════╝
# +----------------------------------------------------------------------------+

# !! DIRETORIOS !!
export LC_NUMERIC="en_US.UTF-8"
source ~/.bashrc
source ~/.zshrc 

# !! COMANDOS !!
alias usb_config='sudo chmod 777 /dev/ttyUSB0'

# !! FUNCOES !!
function xacro_to_pdf {
  echo "Criado arquivo: $nome.urdf"
  urdf_to_graphiz <(xacro $1)
}
function peve_help { printf "
------------- Informacoes de sistema ---------------
 1 - Seu melodic workspace foi criado na pasta:
 > ~/ws_moveit
----------------------- END ------------------------
"
}
