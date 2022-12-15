#!/bin/bash

#Para ir viendo como va actuando el script
#set -x

if [ $# -eq 0 ]
then
 echo "No se ha indicado una URL y una palabra. Argumento incorrecto"
 exit
elif [ $# -eq 1 ]
then
 echo "Se han indicado solo $# argumento. Argumento incorrecto"	
 exit 
elif [ $# -gt 2 ]
then
 echo "Se han indicado $# argumentos. Argumentos incorrectos"	
 exit
else 

#Almaceno la URL introducida
  URL=$1

#Almaceno la palabra a buscar
  palabra=$2

#Creo un archivo con la pagina web
  curl -o pagina.txt $URL 

if [[ -e pagina.txt ]]
 then
  echo "El primer argumento es una URL"
 else
  echo "El primer argumento no es una URL"
  exit
fi
#contabilizar el numero de pabras que esta repetidas
  num=`grep -i $palabra pagina.txt | wc -l`
#Almaceno el numero de la primera linea donde aparece
  grep -n -i $palabra pagina.txt >lineas.txt
  num_lin=`head -c 2 lineas.txt` 
#Elimino los archivos creados para que no interfiera en otras
  rm pagina.txt lineas.txt

#Condicional
  if [ $num == 0 ]
  then
    echo "No se ha encontrado la palabra " "$palabra"
  elif [ $num == 1 ]
    then	
     echo "La palabra ""$palabra" "aparece solo" "$num" "vez" 
     echo "Aparece unicamente en la línea" "$num_lin"
    else    	
     echo "La palabra ""$palabra" "aparece" "$num" "veces"
     echo "Aparece por primera vez en la línea" "$num_lin"
    fi
    fi