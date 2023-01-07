FROM debian:buster

RUN apt-get update
RUN apt-get install wget -y
RUN apt-get install mariadb-client php7.3-fpm php7.3-common php7.3-mysql -y

COPY conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY conf/start.sh /tmp/start.sh

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/bin/wp

RUN mkdir -p /var/run/php/

WORKDIR /var/www/html/wordpress

ENTRYPOINT ["bash", "/tmp/start.sh"]

CMD ["php-fpm7.3", "-F", "-R"]
