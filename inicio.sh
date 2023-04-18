#!/bin/bash
#Autor: Jaime Ruiz de Castroviejo
#Fecha: 18/04/23

while true
do
clear
echo "Menu"
echo "-----"

echo "1) Crear el control de versión"
echo "2) Configurar Usuario: Nombre-Emaiol-Password"
echo "3) Realizar primer commit"
echo "4) Realizar commit sobre el último"
echo "5) Configurar el repositoio remoto"
echo "6) Cambiar nombre de la rama principal: de master a main"
echo "7) Subir al repositorio remoto"
echo "8) Salir"

echo
echo -n "Seleccione una opcion [1-8]"
read opcion

case $opcion in
    1)
	clear
        echo "1) Crear el control de versión"
		echo "---------------------------------"
		git init
       read -rsp $'\nPress enter to continue...'
        ;;
    2)
	clear
        echo "Configurar Usuario: Nombre-Emaiol-Password"
		echo "------------------------------------------"
		git config user.name "JaimeRuizdeCastroviejo"
		git config user.email "jaimer.castroviejo@gmail.com"
		git config user.password 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
       read -rsp $'\nPress enter to continue...'
        ;;
    3)
	clear
        echo "3) Realizar primer commit"
		echo "--------------------------"
		git add .
		git commit -m "Foto 1"
       read -rsp $'\nPress enter to continue...'
        ;;
    4)
	clear
        echo "4) Realizar commit sobre el último"
		echo "---------------------------------"
        git add .
		git commit --amend -m "Foto 1"
		read -rsp $'\nPress enter to continue...'
        ;;
    5)
	clear
        echo "5) Configurar el repositoio remoto"
		echo "---------------------------------"
        git remote add origin "https://github.com/JaimeRuizdeCastroviejo/Proyecto_script_linux.git"
		read -rsp $'\nPress enter to continue...'
        ;;
    6)
	clear
        echo "6) Cambiar nombre de la rama principal: de master a main"
		echo "--------------------------------------------------------"
        git branch -M main
		read -rsp $'\nPress enter to continue...'
        ;;
    7)
	clear
        echo  "7) Subir al repositorio remoto"
		echo "---------------------------------"
        git push -u -f origin main
		read -rsp $'\nPress enter to continue...'
        ;;
    8)
	clear
        echo "Gracias por su visita"
		echo "--------"
		read -rsp $'\nPress enter to continue...'
        exit 0
        ;;
    *)
        echo "Opción no válida"
       read -rsp $'\nPress enter to continue...'
        ;;
 esac
 done