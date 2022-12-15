# Ejercicios Linux

## Ejercicio 1:
Creo directorio foo y detro de este los directorio dummy y empty
```bash
	mkdir -p foo/dummy foo/empty
```
Me muevo al directorio donde quiero crear los dos archivos
```bash
	cd foo/dummy 
```
Creo los archivos en el directorio dummy y añado el texto en el archivo file1.txt
```bash
	touch foo/dummy/file1.txt foo/dummy/file2.txt & echo 'Me encanta la bash' > foo/dummy/file1.txt
```
___
___
## Ejercicio 2
Primer tengo que esta el el directorio de los archivos.

Vuelco el contenido del archivo file1.txt en el archivo file2.txt
 ```bash
	cat file1.txt >> file2.txt
``` 
Muevo el archivo file2.txt al directorio empty
```bash
	mv file2.txt ../empty/
```

## Ejercicio 3

El ejercicio se ejecuta de la siguiente forma:

```bash
# Sin argumento, ejemplo:
	bash ejer_3.sh
# Con argumento, ejemplo:
	bash ejer_3.sh 'Frase a introducir'
```
Estructura del scrip:

1. Se crea un condicional, si no se añade argumentos el texto de los archivos sera "Que me gusta la bash",en caso de dar argumentos esos seran los que aparezcan en los archivos.
```bash
	if [ "$#" == "0" ]
	then       	
		texto1="Que me gusta la bash"
	else
		texto1="$*"
	fi
```
2. El resto sera lo mismo que los ejercicos 1 y 2.
```bash
	mkdir -p foo/dummy/ foo/empty
	cd foo/dummy/
	touch file1.txt file2.txt |echo "${texto1:0}" > file1.txt
	cat file1.txt >> file2.txt
	mv file2.txt ../empty/
```
___
___
### Ejercicio 4
Si se ejecuta el script sin palabra aparecera la siguiente frase:
```bash
# Script sin palabra, ejemplo:
	bash ejer_4.sh 
	"No se ha indicado una palabra. Argumento incorrecto"
```
Si se ejecuta el script con mas de una palabra aparecera la siguiente frase:
```bash
# Script con mas de una palabra, ejemplo:
	bash ejer_4.sh hola adios 
	"Se han indicado $# palabras. Argumentos incorrectos"	
```
El script se ejecuta poniendo una palabra que se va a buscar en el archivo creado con el contenido de una web.
```bash
# Con una palabra, ejemplo:
	bash ejer_4.sh 'Burgos'
```
Compruebo el número de palabras que se han indicado:

Si no se indica ninguna palabra:
```bash
	if [ $# -eq 1 ]
	then
 	echo "No se ha indicado una palabra. Argumento incorrecto"
 	exit
```
Si se indica mas de una palabra
```bash
	elif [ $# -gt 1 ]
	then
	 echo "Se han indicado $# palabras. Argumentos incorrectos"	
	 exit
 ```
Estructura del scrip:
1. Almaceno la palabra introducida al ejecutar el script
```bash
busqueda=$*
```
2. Creo pagina.txt con el contenido de una pagina web
```bash
curl -o pagina.txt https://www.diariodeburgos.es/
```
3. Contabilizo el número de veces que esta repetida la palabra y lo almaceno en la variable 'num'
```bash
	num=`grep -i $busqueda pagina.txt | wc -l`
```
4. Almaceno el número de la primera linea donde aparece la palabra
```bash
grep -n -i $busqueda pagina.txt >lineas.txt
	num_lin=`head -c 2 lineas.txt`
```
5. Condicional creado para elegir la frase que se genera, si la palabra no aparece, si aparece solo una vez o si aparece mas de una.
```bash
	if [ 0 -eq $num ]
	then
	 echo "No se ha encontrado la palabra " "$busqueda"
	elif [ 1 -eq $num]
	 then	
	 echo "La palabra ""$busqueda" "aparece solo $num" "vez" 
	 echo "Aparece unicamente en la línea" "$num_lin"
	else    	
	 echo "La palabra ""$busqueda" "aparece $num" "veces"
	 echo "Aparece por primera vez en la línea" "$num_lin"
	fi
	fi
```
___
___
### Ejercicio 5
El script se ejecuta poniendo primero una URL de la pagina web y de segundo la palabra a buscar en la web.
```bash
# Con URL y palabra a buscar
	bash ejer_5.sh 'URL de la web' 'Palabra a buscar' 

# Cuando no se añaden variables
	bash ejer_5.sh 
	"No se ha indicado una URL y una palabra. Argumento incorrecto"

# Cuando no se añaden mas de dos variables
	bash ejer_5.sh 
 	"Se han indicado $# argumentos. Argumentos incorrectos"	

# Cuando se añaden dos variables y la primera no es una URL
	bash ejer_5.sh 'NO URL de la web' 'Palabra a buscar'
 	"El primer argumento no es una URL"
```
Explicación de script:
1. Almaceno los argumentos en variables
```bash
#Almaceno la URL introducida
	URL=$1
#Almaceno la palabra a buscar
	palabra=$2
```
2. Creo un archivo con la pagina web
```bash
#Solo se crea pagina.txt si la primera variable es una URL
	curl -o pagina.txt $URL 
```
3. Verifico que el primer argumentos es una URL valida:
```bash
#Compruebo que existe el archivo pagina.txt
	if [[ -e pagina.txt ]]
	 then
	  echo "El primer argumento es una URL"
	 else
	  echo "El primer argumento no es una URL"
	  exit
	fi
```
4. Si la primera variable es una URL
```bash
#contabilizar el numero de pabras que esta repetidas
	num=`grep -i $palabra pagina.txt | wc -l`
#Almaceno el numero de la primera linea donde aparece
	grep -n -i $palabra pagina.txt >lineas.txt
	num_lin=`head -c 2 lineas.txt`   
```
5. Elimino los archivos creados para que no interfieran en otras busquedas
```bash
#Elimino los archivos creados para que no interfiera en otras
	rm pagina.txt lineas.txt
```
6. Condicional para elegir la frase en funcion del numero de veces que se repite la palabra a buscar.
```bash
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
```
___
___