# Escolhendo cores
RED='\033[0;31m'
NC='\033[0m' # No Color

# ---------------------------------------------------------------------- #
echo -e "${RED}Começando Atualização${NC}"

# Removendo travas possíveis do apt
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

# Adicionar/Confirmar arquitetura 32bits
sudo dpkg --add-architecture i386

# Atualizando o repositório e dando upgrade
sudo apt update -y
sudo apt upgrade -y

# Atualizando pacotes Snap
sudo snap refresh

echo -e "${RED}Atualização finalizada!${NC}"

# Fim da atualização
# ---------------------------------------------------------------------- #

# Instalação grub-customizer
software='Grub-customizer'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
# Adicionando repositório
	echo "Adicionando repositório"
	sudo add-apt-repository ppa:danielrichter2007/grub-customizer
# Instalando grub-customizer
	sudo apt install grub-customizer -y
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# ---------------------------------------------------------------------- #

# Instalação gnome-tweaks
software='Gnome-tweaks'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
# Adicionando repositório
	echo "Adicionando repositório"
	sudo add-apt-repository universe
# Instalando gnome-tweaks
	sudo apt install gnome-tweaks -y
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# ---------------------------------------------------------------------- #

# Instalação gnome-shell-extension-manager
software='Gnome-shell-extension-manager'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	sudo apt install gnome-shell-extension-manager -y
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# ---------------------------------------------------------------------- #

# Instalação steam
software='Steam'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	sudo apt install steam-installer -y
	sudo apt install steam-devices -y
	sudo apt install steam:i386 -y
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# ---------------------------------------------------------------------- #

# Instalação discord
software='Discord'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	sudo snap install discord
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# ---------------------------------------------------------------------- #

# Instalação slack
software='Slack'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	sudo snap install slack
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
