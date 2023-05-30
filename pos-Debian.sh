#!/bin/bash
# Escolhendo cores
RED='\033[0;31m'
NC='\033[0m' # No Color

# -----------------------ATUALIZAÇÃO------------------------------------ #
echo -e "${RED}Começando Atualização${NC}"

# Adicionar/Confirmar arquitetura 32bits
sudo dpkg --add-architecture i386

# Atualizando o repositório e dando upgrade
sudo apt update -y
sudo apt upgrade -y

echo -e "${RED}Atualização finalizada!${NC}"
# ------------------------FIM DA ATUALIZAÇÃO------------------------------ #
# --------------------------SYSTEM/APT------------------------------------ #

sudo apt install neofetch -y
sudo apt install timeshift -y

# Instalação grub-customizer
software='Grub-customizer'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
# Instalando grub-customizer
	sudo apt install grub-customizer -y
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi

# Instalação cpu-x
software='CPU-X'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	sudo apt install cpu-x -y
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# ---------------------------------------------------------------------- #


# Instalação gnome-disk-utility
software='Disks'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	sudo apt install gnome-disk-utility -y
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# ---------------------------------------------------------------------- #

# Instalação hollywood
software='Hollywood'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	sudo apt install hollywood -y
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# ---------------------------------------------------------------------- #

# Instalação Xscreensaver
software='Xscreensaver'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	sudo apt install xscreensaver xscreensaver-gl xscreensaver-gl-extra xscreensaver-data xscreensaver-data-extra -y
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# ---------------------------------------------------------------------- #
# --------------------------FLATPAK------------------------------------ #
sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak --version

flatpak install flathub com.visualstudio.code
flatpak install flathub com.valvesoftware.Steam
flatpak install flathub com.discordapp.Discord
flatpak install flathub io.github.shiftey.Desktop
