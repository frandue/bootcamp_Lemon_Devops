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
      3. 33:38
   
3. Introducción a Scripting
   
4. Introducción a BASH
   
5. Gestión de permisos