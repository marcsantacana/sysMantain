#!/bin/bash
 
echo " "
echo "Activitat 8: Automatització de Tasques de Manteniment del Sistema"
echo " "
echo "Iniciant programa..."
sleep 3
echo " "

# Funció per netejar caches i arxius temporals
netejar_caches() {
	echo "Netejant caches i arxius temporals..."
	sudo apt-get clean	
	sudo rm -rf /tmp/*
	sudo rm -rf /var/tmp/*
	echo "Caches i arxius temporals netejats."
}

# Funció per actualitzar el sistema i les aplicacions
actualitzar_sistema() {
	echo "Actualitzant el sistema i les aplicacions..."
	sudo apt-get autoremove -y
	sudo apt-get update
	sudo apt-get upgrade
	echo "Sistema i aplicacions actualitzats."
}

# Executa les funcions de manteniment
netejar_caches
actualitzar_sistema

# Estableix que l'script s'executi cada vegada que s'arranca el sistema
echo "Establint l'script per executar-se a l'arrencada del sistema..."
sudo cp "$0" /etc/init.d/manteniment_sistema
sudo chmod +x /etc/init.d/manteniment_sistema
sudo update-rc.d manteniment_sistema defaults
echo "Script configurat per executar-se a l'arrencada del sistema."

echo "Tasques de manteniment completades!"
echo " "
echo "Tancat programa..."
sleep 3
echo " "
