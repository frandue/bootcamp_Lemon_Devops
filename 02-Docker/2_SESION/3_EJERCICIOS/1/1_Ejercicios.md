1. Primero creo el archivo Dockerfile con el siguiente contenido:

  FROM nginx:alpine
 
  LABEL maintianers="fran@fran.lemoncode.net"
  LABEL project="lemoncode"

  COPY content/ /usr/share/nginx/html

2. Creo el contenedor con el siguiente contenido:
      1. Tengo que indicar donde se encuentra el Dockerfile
   1. docker build -t simple-nginx:new ..
3. Enciendo el contenedot
   1. docker run -d -p 80:5050 simple-nginx:new
4. Para saber las capas que tiene mi imagen:
   1. docker history simple-nginx:new 