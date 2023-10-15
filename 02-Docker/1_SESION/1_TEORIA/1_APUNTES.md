1. Introducción a los contenedores
   1. Una aplicacion = una maquina
   2. Maquina virtual -> con hipervisores -> Multiples aplicaciones -> Tarda mucho en arrancar
   3. Contenedores -> Un unico SO y los contenedores se apollan en el Kernel del host pero son aislados e independientes -> Muy rapidos  
      1. Docker -> Dock + worker
      2. ¿Qué es Docker?
         1. Es una tecnologia que permite orquestar contenedores y crear
         2. Fundada por Solomon Hykes 
      3. ¿Qué es un contenedor?
         1. Una imagen encapsuda con todas las librerias nacesarias para que funciones, independiente del host
         2. Es la instancia de una imagen
      4. ¿Qué es una imagen?
         1. Son los elementos necesarios para poder ejecutar la aplicación.
         2. Mediante un Dockerfile
      5. ¿Y kubernetes?
         1. Es un orquestador de los contenedores. 
2. Relación contenedores y microservicios
3. Instalando Docker Desktop
4. Primeros pasos con Docker
    1. Inspeccionando Docker Desktop
    2. Primeros comandos con Docker
       1. docker pull
       2. docker push
       3. docker build
       4. docker run -> un contenedor
       5. docker ps -> Lista de los contenedores ejecutados
          1. docker ps -a -> Muestra todos los contenedores
       6. doker attach -> Te permite engancharte a un contenedor
       7. docker cp -> Te permite copiar archivos al contenedor y viceverda  
       8. docker kill -> Para poder matar unos o mas contenedores corriendo
       9.  docker start/stop   -> Para arrancar o parar el contenedor
       10. docker rm  -> Para eliminar uno o mas contenedores 
