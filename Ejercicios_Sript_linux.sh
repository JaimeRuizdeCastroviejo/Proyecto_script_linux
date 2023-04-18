#!/bin/bash
#Autor: Jaime Ruiz de Castroviejo
#Fecha: 18/04/23

echo Ejemplo 0001: Determinar si 2 es mayor que 3.  Usar corchete simple.

if [ 2 -gt 1 ]
then
	echo "2 es mayor que 1"
else
	echo "2  NO es mayor que 1"
fi;

echo Ejemplo 0002: Determinar si 2 es distinto que 3. Usar corchete simple.

if [ 2 -ne 1 ]
then
	echo "2 es distinto a 3"
else
	echo "2 es igual a 3"
fi;


echo Ejemplo 0003: Determinar si 4 estra entre 3 y 5. Usar corchete doble.

if [[ 4 -gt 3 && 4 -lt 5 ]]
then
	echo "El 4  está entre el 3 y el 5"
else
	echo "El 4  NO está entre el 3 y el 5"
fi;


echo Ejemplo 0004: Determinar si 4 esta entre 3 y 5. Usar corchete simple.

if [ 4 -gt 3 && 4 -lt 5 ]
then
	echo "El 4  está entre el 3 y el 5"
else
	echo "El 4  NO está entre el 3 y el 5"
fi;

echo Ejemplo 0005:  Determinar si 2 es distinto que 3. Usar corchete doble.

if [[ 2 -ne 3 ]]
then
	echo "2 es distinto a 3"
else
	echo "2 es igual a 3"
fi;

echo Ejemplo 0006: Crear una variable que llamaremos edad y le asignaremos un valor de 15, luego imprimeremos el contenido de la variable en pantalla.
edad=15
echo $edad

echo Ejemplo 0007:  Hola mundo y modificar variables
mensaje='Hola Mundo'
echo $mensaje
mensaje=5.5
echo $mensaje
mensaje=10
echo $mensaje

echo Ejemplo 0008:  Error al modificar contenido
mensaje='Hola Mundo'
echo $mensaje
readonly mensaje
#mensaje='Otro texto'
echo $mensaje

echo Ejemplo 0009:

echo "Nombre del script: $0"
echo "Parámetro1: $1"
echo "Parámetro2: $2"
echo "Valores de los parámetros: $@"
echo "Valores de los parámetros: $*"
echo "Total de parámetros: $#"
echo $?

echo Ejemplo 0010:	Para mostrar mensajes en la patalla se usa el comando echo
echo Hoy como estas
Miedad=20
echo creo que tiene $Miedad años
echo -e "Esta \nfrase \nse \nmostrará \npalabra \npor \npalabra \nen \nuna \nlinea \ndistinta \ncada \npalabra"
echo -e "Suprimir lo que viene a continuación \c el salto de linea"
echo Imprimir todos los ficheros y carpetas a modo ls
echo *
echo Imprimir todos los ficheros en un formato concreto
echo *.sh
echo "Esta frase se direcciona a un archivo donde queda grabado" > salvar.txt
echo "Esto que sigue se añade al final del archivo" >>salvar.txt
echo -n "Omitimos el salto de linea"

echo Ejemplo 0011: Representar caracterres unicode
echo -e "\u2622"
echo -e "\U1f41e"

echo Ejemplo 0012: Comparar el contenido de 2 variables que tienen una cadena almacenada cada variable.
nombre1='Luis'
nombre2='luis'
if [[ $nombre1 = $nombre2 ]]
then
	echo "Son iguales"
else
	echo "Son distintos"
fi;

echo Ejemplo 0013: Se pueden comparar las cadenas directamente si no tiene espacios en blanco sin comillas simples o dobles
if [[ Luis = luis ]]
then
	echo "Son iguales"
else
	echo "Son distintos"
fi;