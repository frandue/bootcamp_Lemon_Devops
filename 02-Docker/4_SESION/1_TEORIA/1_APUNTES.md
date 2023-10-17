1. Tipos de datos en los contenedores:
   1. Persistentes  -> Cuando el contenedor se elimina lo datos siguen existiendo
   2. No persistentes -> cuando el contenedor se elimina se borra con el
2. Tipos de montajes:
   1. VOLUMEN
      1.  Volumen, se monta en un directorio dentro del sistema de ficheros del contenedor
      2.  Cualquier cosa que se escriba se almacena en el volumen
      3.  Aunque elimines el contenedor el volumen sigue existiendo
      4.  Usos:
          1.  Compartir datos entre multiples contenedores
          2.  Almacenar los datos en un host remoto
          3.  Cuando tu aplicacion requiere un alto rendimiento en el I/O en docker(In/Out)
   2.  BIND MOUNT
       1.  Un archivo o directorio del host es montado en el contenedor
       2.  Depende que disponga de la ruta al host
       3.  Puedes modificar los ficheros desde el host y cambian en el contenedor
       4.  Usos:
           1.  Compartir archivos entre el contenedor y el host
           2.  Compartir codigo fuente entre el entorno de desarrollo y el contenedor
   3.  tmpsfs (Solo en LINUX)
       1.  es temporal y persiste en la memoria del host
       2.  cuando el contenedor se para el montaje tmpfs se elimina
       3.  Usos:
           1.  No se quiere que persistan esos datos por seguridad o por alto rendimiento
           2.  Para guardar secretos, contraseñas o datos sensibles
           3.  Para volumenes grandes de datos de manera temporal
3.  Comandos:
    1.  docker volume create  -> Se utiliza para crear el volumen de forma explicita
    2.  docker volume ls -> Lista todos los volumenes existentes en el host
    3.  docker volume inspect -> Muestr el detalle del volumen
    4.  docker volume rm -> Elimina un volumen especifico
    5.  docker volume prune -> Elimina todos los volumenes
4.  Monitarizacion
    1.  Tipos:
        1.  docker events
            1.  Recupera datos en tiempo real del servidor
            2.  Muestra diferentes tipos de eventos, dependiendo del objeto
            3.  Solo devuelve los ultimos 1000
        2.  Docker logs
            1.  Informacion que ha registrado un contenedor que se esta ejecutando
            2.  Muestra la salida que apareceria si ejecutaramos el comando en el terminal
            3.  Existen soluciones que se montan sobre docker logs -> logging drivers
        3.  Docker stats
            1.  Asi podemos ver metricas de los contenedores
            2.  Por defecto te muestra CPU, memoria, red y disco
            3.  Existen soluciones que se montan sobre docker stats
5.  Comandos:
    1.  docker events
    2.  docker stats
    3.  docker system df
    4.  docker system df