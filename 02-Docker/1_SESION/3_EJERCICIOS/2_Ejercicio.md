docker run -d --name lemoncoders-web -p 9999:80 nginx

docker cp lemoncoders-web/. lemoncoders-web:/usr/share/nginx/html