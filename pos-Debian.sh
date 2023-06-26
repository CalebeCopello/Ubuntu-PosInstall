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

# Instalação Gparted
software='Gparted'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	sudo apt install gparted -y
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
# Instalação Steam
software='Steam'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	sudo apt install steam-devices -y
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# ---------------------------------------------------------------------- #
# Instalação Btop
software='Btop'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	sudo apt install btop -y
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# ---------------------------------------------------------------------- #
# Instalação moc
software='Console audio player & Cava'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	sudo apt install moc moc-ffmpeg-plugin cava -y
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# ---------------------------------------------------------------------- #
# Instalação Restricted-extras packages
software='Restricted-extras packages'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	sudo apt install ttf-mscorefonts-installer rar unrar libavcodec-extra gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi -y
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# ---------------------------------------------------------------------- #
# --------------------------FLATPAK------------------------------------ #
sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak --version

# ---------------------------------------------------------------------- #
# Instalação vs-code
software='VS Code'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	flatpak install flathub com.visualstudio.code
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# ---------------------------------------------------------------------- #
# Instalação Github Desktop
software='Github Desktop'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	flatpak install flathub io.github.shiftey.Desktop
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# ---------------------------------------------------------------------- #
# Instalação Discord
software='Discord'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	flatpak install flathub com.discordapp.Discord
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# ---------------------------------------------------------------------- #
# Instalação Image Viewer
software='Image Viewer'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	flatpak install flathub org.gnome.eog
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# ---------------------------------------------------------------------- #
# Instalação Chrome
software='Chrome'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	flatpak install flathub com.google.Chrome
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# ---------------------------------------------------------------------- #
# Instalação Opera
software='Opera'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	flatpak install flathub com.opera.Opera
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# ---------------------------------------------------------------------- #
# Instalação Brave
software='Brave'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	flatpak install flathub com.brave.Browser
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# ---------------------------------------------------------------------- #
# Instalação VLC
software='VLC'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	flatpak install flathub org.videolan.VLC
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# ---------------------------------------------------------------------- #
# Instalação Flameshot
software='Flameshot'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	flatpak install flathub org.flameshot.Flameshot
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# ---------------------------------------------------------------------- #
# Instalação Calculator
software='Calculator'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	flatpak install flathub org.gnome.Calculator
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# ---------------------------------------------------------------------- #
# Instalação OBS Studio
software='OBS Studio'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	flatpak install flathub com.obsproject.Studio
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# ---------------------------------------------------------------------- #
# Instalação Gimp
software='Gimp'
echo -e "Deseja instalar ${RED}[${software}]${NC}? s/y: "
read option
if [ $option == "Y" ] || [ $option == "y" ] || [ $option == "S" ] || [ $option == "s" ]
then
	echo -e "${RED}Instalando ${software}${NC}"
	flatpak install flathub org.gimp.GIMP
	echo -e "${RED}${software} instalado${NC}"
else
	echo -e "${RED}${software} NÃO instalado${NC}"
fi
# ---------------------------------------------------------------------- #
