#!/bin/bash/

#Para ir viendo como va actuando el script
set -x

if [ $# -lt 1 ]
then
 echo "No se ha indicado una palabra. Argumento incorrecto"
 exit
elif [ $# -gt 1 ]
then
 echo "Se han indicado $# palabras. Argumentos incorrectos"	
 exit
else 

#Almaceno la palabra introducida
busqueda=$*

#Creo un archivo con la pagina web
curl -o pagina.txt https://www.diariodeburgos.es/

#contabilizar el numero de pabras que esta repetidas
num=`grep -i $busqueda pagina.txt | wc -l`

#Almaceno el numero de la primera linea donde aparece
grep -n -i "$busqueda pagina.txt >lineas.txt
num_lin=`head -c 2 lineas.txt` 

#Condicional
if [ 0 -eq $num ]
then
 echo "No se ha encontrado la palabra " $busqueda
elif [ 1 -eq $num]
 then	
 echo "La palabra ""$busqueda" "aparece solo $num" "vez" 
 echo "Aparece unicamente en la línea" $num_lin
else    	
 echo "La palabra "$busqueda "aparece $num" "veces"
 echo "Aparece por primera vez en la línea" $num_lin
fi
fi

