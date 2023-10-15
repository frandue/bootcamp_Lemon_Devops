1. Tipos de datos en los contenedores:
   1. Persistentes  -> Cuando el contenedor se elimina lo datos siguen existiendo
   2. No persistentes -> cuando el contenedor se elimina se borra con el
2. Tipos de montajes:
   1.  Volumen, se monta en un directorio dentro del sistema de ficheros del contenedor
   2.  Cualquier cosa que se escriba se almacena en el volumen
   3.  Aunque elimines el contenedor el volumen sigue existiendo
   4.  Usos:
       1.  Compartir datos entre multiples contenedores
       2.  Almacenar los datos en un host remoto
       3.  Cuando tu aplicacion requiere un alto rendimiento en el I/O en docker(In/Out)