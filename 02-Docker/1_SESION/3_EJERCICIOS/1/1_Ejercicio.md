Ejercicio 1, Pagina 22

docker run -d --name mi-contenedor-mongo -e MONGO_INITDB_ROOT_USERNAME=admin -e MONGO_INITDB_ROOT_PASSWORD=1234 -p 27017:27017 mongo

Dentro de mongo DB compass -> advanced connection options

docker run me descargo la imagen y me creo el contenedor a la vez sin necesidar de un docker pull y un docker build
-d -> Ejecuta el contendedor en segundo plano
--name  -> Das el nombre al contenedor que se quiera
-e  -> Ordenes especificas del contenedor que aparecen en la instrucciones su uso
-p  -> Mapea el puerto del host(1) con el del contenedor(2)
docker exec -it ID -> Te permite interactuar en la shell del contenedor luego indicar bash o sh