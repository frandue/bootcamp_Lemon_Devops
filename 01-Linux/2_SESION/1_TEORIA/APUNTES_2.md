1. Comandos básicos
   1. Comandos de APUNTES1
   2. find  . -type  -> Listame los directorios en la carpeta actual
      1. find . -type -d   -> directorio
      2. find . -type -f   -> fichero
      3. find . -name "file*" -> Me busca todos los ficheros que empiecen con file
      4. grep "model name" /proc/cpuinfo  -> Me buscan el contenido que le diga "" dentro del archivo
         1. grep -E "^(Men|Swap)" /proc/cpuinfo -> busca ficheros que empiecen por Men o Swap en el fichero /proc/cpuinfo
      5. head nombre_fichero  -> Muestras las 10 primeras lineas
         1. head -n 5 nombre_fichero   -> Muestra solo las 5 primeras
      6. tail nombre_fichero  -> Misma estructura que head pero la parte final del documento
2. Comando CURL
      1. Se conecta a un servidor y me devuelve el contenido de su index.js
      2. curl -o file_guardar https://www.google.es   -> Me almacena el contenido de la url en el archivo file_guardar
      3. curl -v http.enlace.com ->Para ver las cabeceras mas todo el contenido
      4. curl -I http.enlace...  -> Para ver solo las cabeceras
      5. curl -S nombre_file.txt http.enlace...  ->Para guarda el contenido en un archivo
3. Introducción a Scripting
   1. Es un fichero con una series de comando que los ejecuta un interprete
   2. Al script es bueno darle la estension .sh
   3. Para manejar el VIM
      1. i -> Para empezar a escribir
      2. esc -> para para y dejar de escribit
      3. :wq   -> Para guardar y salir
   4. Para ejecutar el scrip bash ./ruta del .sh
   5. Sin decirle el interprete . ./ruta del .sh
   6. Sin decirle el interprete source ./ruta del .sh
   7. Para no tener que indicar el interperte podemos dentro del scrip en la primera linea hacer un sh bang
      1. #!/bin/bash    -> Asi le estoy diciendo que el interprete en bash
   8. Variables dentro del sistema
      1. env   -> Mostrar las variables dentro del sistema
      2. $nombre  -> $ mas el nombre de la varible para acceder al valor de la variable
   
4. Introducción a BASH
   1. Acceder a los fichero 0 1 2 3 en /dev/fd/
      1. ls /dev/fd/
      2. 0 -> STDIN
      3. 1 -> STDOUT
      4. 2 -> STDERR
         1. Para redirecionar el contenido de esos numeros
         2. ls 1> fille1.txt
      5. Comandos de redireccion
         1. para redireccionar la salida con el simbolo >
            1. Como este simbolo machaco todo el contenido que habia en el fichero
            2. Para no machacar sino añadir al final pongo dos >>
      6. Uso de pipes |
         1. La salida del comando 1 es la entrada del comando 2 y asi sucesivamente
      7. 
5. Gestión de permisos
   1. Usuario(u)-Grupo(g)-Otro(o)
   2. Lectura(r)-Escritura(w)-Ejecucion(x)
   3. ls -l -> Para listar los permisos
   4. chmod  +r nombre.txt -> añado a todos el permiso de lectura. Con el menos delante lo quitaria e permiso
      1. chmod (target) +-(permiso) -> el target o targets y + para añadir - para quitar 
      2. 000(---)1 001(--x)2 010(-w-)3 011(-wx)4 100(r--)5 101(r-x)5 110(rw-)6 111(rwx)7
      3. ejp chmod 644 file.txt -> rw--wx-wx