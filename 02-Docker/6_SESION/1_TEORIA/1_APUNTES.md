1. Funcionamiento de Docker compose
   1. Se usa en lugar de generar muchos comandos en docker
   2. Un unico archivo en YAML y se despliega con un solo comando
   3. Puedes manejar el ciclo de vida de tu aplicacion con un conjunto de comandos
   4. Puedes guardarlo y versionar la configuracion de tu aplicacion
   5. El nombre por defecto de estos archivos es docker-compose.yml
   6. Puedes utilizar el flag -f para especificar nombres personalizados
2. Secciones de Docker compose
   1. version:
      1. Especifica la version del archivo de Docker compose  ->  Obligatorio primera linea
   2. Services
      1. Se definen los contenedores que componen la aplicacion
   3. volumes:
      1. los volumenes que tus contenedores utilizaran para guardar los datos
   4. network:
      1. lista de redes que usaran tu aplicacion
3. Comandos:
   1. docker-compose up -> Despliega una aplicacion utilizando docker-compose.yaml
   2. docker-compose stop -> Para todos los contenedores de la aplicacion
   3. docker-compose restart  ->  Reinici los contenedores de la aplicacion
   4. docker-compose ps ->  Lista todos los componentes generados con el docker-compose.yaml
   5. docker-compose down ->  Elimina todos los contenedores, volumenes y redes generados por compose up