FROM debian:buster

RUN apt-get update -y
RUN apt-get install nginx -y
RUN apt-get install openssl -y

COPY conf/nginx.conf /etc/nginx/site-enabled/nginx.conf

RUN mkdir /etc/nginx/ssl
RUN openssl req -x509 -newkey rsa:4096 -sha256 -nodes -keyout /etc/nginx/ssl/key.pem -out /etc/nginx/ssl/out.pem -days 365 -subj "/C=FR/ST=FRANCE/L=PARIS/O=42/OU=42PARIS/CN=shamizi"

RUN mkdir -p /var/www/html/wordpress

CMD ["nginx", "-g", "daemon off;"]
