#Sript en Linux

- Ejemplo 0001: Determinar si 2 es mayor que 3.  Usar corchete simple.

<pre>
<code>
if [ 2 -gt 1 ]
then
	echo "2 es mayor que 1"
else
	echo "2  NO es mayor que 1"
fi;

El resultado es: 2 es mayor que 1

</code>
</pre>

-Ejemplo 0002: Determinar si 2 es distinto que 3. Usar corchete simple.

<pre>
<code>
if [ 2 -ne 1 ]
then
	echo "2 es distinto a 3"
else
	echo "2 es igual a 3"
fi;
El resultado es: 2 es distinto a 3

</code>
</pre>

-Ejemplo 0003: Determinar si 4 estra entre 3 y 5. Usar corchete doble.

<pre>
<code>
if [[ 4 -gt 3 && 4 -lt 5 ]]
then
	echo "El 4  está entre el 3 y el 5"
else
	echo "El 4  NO está entre el 3 y el 5"
fi;

El resultado es:El 4  está entre el 3 y el 5

</code>
</pre>

-Ejemplo 0004: Determinar si 4 esta entre 3 y 5. Usar corchete simple.

<pre>
<code>
if [ 4 -gt 3 && 4 -lt 5 ]
then
	echo "El 4  está entre el 3 y el 5"
else
	echo "El 4  NO está entre el 3 y el 5"
fi;

El resultado es: El 4  NO está entre el 3 y el 5

</code>
</pre>

-Ejemplo 0005:  Determinar si 2 es distinto que 3. Usar corchete doble.

<pre>
<code>
if [[ 2 -ne 3 ]]
then
	echo "2 es distinto a 3"
else
	echo "2 es igual a 3"
fi;

El resultado es: 2 es distinto a 3

</code>
</pre>

-Ejemplo 0006: Crear una variable que llamaremos edad y le asignaremos un valor de 15, luego imprimeremos el contenido de la variable en pantalla.

<pre>
<code>
edad=15
echo $edad

El resultado es: 15

</code>
</pre>

-Ejemplo 0007:  Hola mundo y modificar variables

<pre>
<code>
mensaje='Hola Mundo'
echo $mensaje
mensaje=5.5
echo $mensaje
mensaje=10
echo $mensaje

El resultado es: 
Hola Mundo
5.5
10

</code>
</pre>

Ejemplo 0008:  Error al modificar contenido

<pre>
<code>
mensaje='Hola Mundo'
echo $mensaje
readonly mensaje
mensaje'Otro texto'
echo $mensaje
El resultado es: Ejemplo 0008: Error al modificar contenido
Hola Mundo
Ejercicios_Sript_linux.sh: line 68: mensaje: readonly variable


</code>
</pre>

Ejemplo 0009:  con hola mundo

<pre>
<code>
echo "Nombre del script: $0"
echo "Parámetro1: $1"
echo "Parámetro2: $2"
echo "Valores de los parámetros: $@"
echo "Valores de los parámetros: $*"
echo "Total de parámetros: $#"
echo $?

El resultado es: Ejemplo 0009: 
Nombre del script: Ejercicios_Sript_linux.sh
Parámetro1: hola
Parámetro2: mundo
Valores de los parámetros: hola mundo
Valores de los parámetros: hola mundo
Total de parámetros: 2
0

</code>
</pre>

Ejemplo 0010:

<pre>
<code>
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

El resultado es: Hoy como estas
creo que tiene 20 años
Esta
frase
se
mostrará
palabra
por
palabra
en
una
linea
distinta
cada
palabra
Suprimir lo que viene a continuación Imprimir todos los ficheros y carpetas a modo ls
Ejercicios_Sript_linux.sh PsintPonerBonito.md Script_linux.md inicio.sh markdown.md
Imprimir todos los ficheros en un formato concreto
Ejercicios_Sript_linux.sh inicio.sh
Esta frase se direcciona a un archivo donde queda grabado
Esto que sigue se añade al final del archivo
Omitimos el salto de linea

</code>
</pre>

Ejemplo 0011: Representar caracterres unicode

<pre>
<code>
echo -e "\u2622"
echo -e "\U1f41e"

El resultado es: 
☢
🐞

</code>
</pre>

Ejemplo 0012: Comparar el contenido de 2 variables que tienen una cadena almacenada cada variable.

<pre>
<code>
nombre1= "Luis"
nombre2= "luis"
if [[ $nombre1 = $nombre2 ]]
then
	echo "Son iguales"
else
	echo "Son distintos"
fi;
El resultado es: Son distintos


</code>
</pre>

Ejemplo Se pueden comparar las cadenas directamente si no tiene espacios en blanco sin comillas simples o dobles

<pre>
<code>

if [[ Luis = luis ]]
then
	echo "Son iguales"
else
	echo "Son distintos"
fi;
El resultado es: Son distintos


</code>
</pre>