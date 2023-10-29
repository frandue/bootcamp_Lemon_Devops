****Principios basicos de redes
1. DNS  -> Domain name system
2. Docker ejecuta tus aplicaciones dentro de contenedores de manera aislada
3. Esta basado en una arquitectura llamada COntainer Networl Model
4. Tipos de redes:
   1. NONE  -> El contennedor no habla con nadie
   2. Host  -> Cuando quieres deshabilitar el aislamiento entre el host y el contenedor
   3. Bridge  -> Conectar otros contenedores dentro de la misma red.
   4. Overlay -> Cuando trabajo en modo cluster y necesitas extender la red entre los nodos
5. Comandos:
   1. docker network ls -> Lista todas las redes creadas en el host de docker
   2. docker network create -> Crea una nueva red
   3. docker network rm -> Elimina una red especifica
   4. docker network prune  -> Elimina todas las redes que esten en desuso 