#!/bin/bash
# Escolhendo cores
RED='\033[0;31m'
NC='\033[0m' # No Color

# -----------------------ATUALIZAÇÃO------------------------------------ #
echo -e "${RED}Começando Atualização${NC}"

# Removendo travas possíveis do apt
sudo rm /var/lib/dpkg/lock-frontend; sudo rm /var/cache/apt/archives/lock

# Adicionar/Confirmar arquitetura 32bits
sudo dpkg --add-architecture i386

# Atualizando o repositório e dando upgrade
sudo apt update -y
sudo apt upgrade -y
 
# Atualizando pacotes Snap
sudo snap refresh

echo -e "${RED}Atualização finalizada!${NC}"

# --------------------FIM DA ATUALIZAÇÃO------------------------------ #
# --------------------------SYSTEM------------------------------------ #
# Instalação pacotes extras

sudo apt install ubuntu-restricted-extras -y
sudo apt install neofetch -y

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

# ------------------------PACOTES GNOME--------------------------------- #

software='Pacotes Gnome'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
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
fi
# --------------------FIM DOS PACOTES GNOME----------------------------- #
# ------------------------SOFTWARE SNAPS-------------------------------- #
echo -e "Instalando ${RED}[SOFTWARE SNAPS]${NC}..."
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

# ---------------------------------------------------------------------- #

# Instalação gimp
software='GIMP'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	sudo snap install gimp
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi

# ---------------------------------------------------------------------- #

# Instalação vlc
software='VLC'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	sudo snap install vlc
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi

# ---------------------------------------------------------------------- #

# Instalação libreoffice
software='Libre Office'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	sudo snap install libreoffice
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi

# ---------------------------------------------------------------------- #

# Instalação opera
software='Opera'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	sudo snap install opera
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi

# ---------------------------------------------------------------------- #

# Instalação brave
software='Brave'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	sudo snap install brave
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# --------------------FIM DOS SOFTWARE SNAPS--------------------------- #
# ------------------------SOFTWARE DIVERSOS---------------------------- #
echo -e "Instalando ${RED}[SOFTWARE DIVERSOS]${NC}..."

# Instalação chrome
software='Chrome'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	chmod +x google-chrome-stable_current_amd64.deb
	sudo dpkg -i google-chrome-stable_current_amd64.deb
	rm google-chrome-stable_current_amd64.deb
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# --------------------FIM DOS SOFTWARE DIVERSOS------------------------- #
# -----------------------------DEV PACKAGE----------------------------- #
echo -e "Instalando ${RED}[DEV PACKAGE]${NC}..."
echo -e "Instalando ${RED}[GIT]${NC}..."
sudo apt install git -y

# Instalação vs-code
software='VS Code'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	sudo snap install code --classic
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# ---------------------------------------------------------------------- #
# Instalação github-desktop
software='Github-desktop'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	wget -qO - https://apt.packages.shiftkey.dev/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/shiftkey-packages.gpg > /dev/null
	sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/shiftkey-packages.gpg] https://apt.packages.shiftkey.dev/ubuntu/ any main" > /etc/apt/sources.list.d/shiftkey-packages.list'
	sudo apt update && sudo apt install github-desktop
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# ---------------------------------------------------------------------- #
