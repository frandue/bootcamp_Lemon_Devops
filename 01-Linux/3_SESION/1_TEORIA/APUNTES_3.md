1. Introduccion.
   1. GNU(No tiene Kernel)es el SO y LINUX es el Kernel(En cargado de comuncar el software con el hardware)
   2. En contenedores:
      1. CGroups: dentro del kernel limita el uso de recursos por el SO. Uso de memoria, uso de red etc.
      2. Namespaces: Visibilidad dentro de una red en tema de contenedores

2. Sistema jerarquico de ficheros.
   1. Una **ruta** es **aboluta** cuando empieza desde la raiz (/) ejp /var/lib
   2. ruta relativa, cuando la ruta no empieza por la (/)
   3. ruta que empieza por **(..)**, directorio padre del que estoy situado(subir de nivel)
   4. Comandos:
      1. pwd -> print working directory
      2. cd  -> change directory, con rutas relativas y absoluta. Directorio actual (.). Directorio padre del actual (..)
      3. ls  -> list directory of the actual
         1. ls -a -> para ver todos los directorios, los ocultos tambien, empiezan por punto .xxx
         2. ls -l -> nos da un directorio mas detallado
      4. ~ -> Representa el directorio home(el personal)
      5. man Xnombre_comandoX -> manual(q to quiet)
         1. / XXX -> para hacer busqueda dentro de XXX
      6. top -> Minotorar procesos en tiempo real
      7. htop -> Como top pero mas actual(F6 para ordenar los procesos)
      8. free -> tabla con el uso de memoria -k(datos en kbite) -h (human)
      9.  df -d -> para ver el espacio disponible de un punto de montage
      10. fdisk -l Xruta que quieroX  -> para ver las tabla de particiones
      11. iotop -> no viene instalado por defecto, apt-get install iotop. Es omo top pero me muestro el uso de disco de cada proceso
      12. netstat -> me da informacion de las redes de red y los puerto... etc
      13. pidof   -> me busca el nombre del identificador
      14. kill -9 XXX   -> termina el proceso con el indicador XXX
      15. rm -f XXX  -> borrar un archivo XXX. -f forma forzada
          1.  rm -r para borrar archivos y directorios con sus archivos
          2.  rm directorio/* -> Me borra todo el contenido del directorio menos el directorio
      16. mkdir   -> Crear un directorio
      17. cat nombrefichero   -> Para visualizar el contenido del fichero
      18. cp fichero_origen fichero_destino  -> Copiar el contenido del archivo arigen al fichero destinot 
          1.  cp -r folderA/ folderB/  -> Me copia todo el contenido de folder A a folder B
      19. less nombre_file -> Navegar por el contenido del dichero
      20. mv fichero X/  -> Mover el fichero al direcotrioX
      21. mv file1.txt file2.txt    -> Nuevo el contenido del fichero1 al fichero 2
      22. mv folder1/ folder2/   -> Muevo el directorio folder1 al directorio folder2
      23. mv folder1 folder69    -> Me renombra el directorio folder 1  directorio folder 69
  1.  
  2.  
   3. Directorio /var -> Donde se almacenan los datos persistentes.  
   
3. Gestion de paquetes:
   1.  Instalar aplicaciones y saber de donde instalarlas
   2.  La mas primitiva, ir al repositorio donde este el codigo fuente, compilarlo, obtener todas las dependencias completas, mover todos los archivos compilados a los directorios especificos.
   3.  Gestor de paquetes: en ubuntu es apt o apt-get(old) o apt-cache(para ver descripciones del paquete) o apt-key(Para ver las claves de un paquete), en debia dpkg.
   4.  Los repositorios oficiales se encuentra en el directorio /etc/apt/sources.list 
   5.  Sincronizar nustro gestor de paquetes
       1.  sudo apt-get update  -> asi sincronizo los repositorios  //mabel22//
       2.  sudo apt-get install nodejs npm -> asi instalo los paquetes de nodejs y npm
           1.  flags:   
               1.  -q -> instalacion sileciosa
               2.  -s -> simulacion, todo lo que tiene que aplicarse pero sin aplicarlo
               3.  -y -> Para que no me pida confirmacion
               4.  --help -> Nos da toda la informacion sobre el comando.
       3. sudo apt-get upgrade   -> actualiza los paquetes que tenga una version superior
       4. apt list --upgradable  -> para ver una lista de los repositorios que se pueden actualizar
       5. apt list --installed   -> listado de paquetes instalados
       6. sudo apt-get remove XXX   -> Para eliminar el paquete XXX
       7. sudo apt-get autoremove   -> Para borrar paquetes huerfanos
       8. apt cache search node     -> Busca paquetes que esten relaccionado con la palabra node
       9. apt cache show nodejs       -> Me encuentra toda la info existente sobre el paque nodejs
4. Trabajo con la CLI de Linux
5. BASH scripting
6. Networking
7. Administrador de sistemas