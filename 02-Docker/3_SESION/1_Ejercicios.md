1. Situo el CLI de visual estudio en la carpeta donde se situa el Dockerfile
2. instalo las dependencias con -> npm install
3. Arrancon las dependencias con -> npm startnp
4. Ejecuto el siguiente comando, me situo en la carpeta en la que tengo el Dockerfile:
   1. docker build -t helolemoncoder:latest .
5. Ejecuto el contenedor para que se active con el siguiente comando:
   1. docker run -d -p 4000:4000 helolemoncoder
   