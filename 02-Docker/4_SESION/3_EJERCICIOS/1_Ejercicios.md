  1. Ejercicio 1:
     1. Me desacargo la imagen:
        1. docker pull yazcunaga/galleryapp
     2. Inspecciono el contenedor:
        1. docker image inspect yazcunaga/galleryapp
        2. Puedo ver en la informacion el working dir -> /usr/src/app
        3. Y el puerto expuesto -> 8080/tcp
     3. Creamos el contenedor con la imagen descargada
        1. docker run -d -p 9000:8080 --name galleryapp -v images:/usr/src/app/images yazcunaga/galleryapp
     4. Copio la imagen de la carpeta en la que estoy en el volumen, pongo el nombre del archivo
        1. docker cp WIN_20211114_09_47_05_Pro.jpg galleryapp:/usr/src/app/images
  2. Ejercicio 2:
     1. Elimino el contenedor
        1. docker rm -f galleryapp
     2. Compruebo que el volumen sigue existinedo
        1. docker volume ls
     3. Acceder al contenido del volumen tiene que estar contenido en un volumen
  3.  Ejercicio 3:
      1.  docker run -d -p 9000:8080 --name galleryapp --mount type=bind,source=$(pwd)/images,target=/usr/src/app/images yazcunaga/galleryapp
   
