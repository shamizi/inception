FROM debian:buster

RUN apt-get update
RUN apt-get install mariadb-server -y

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY conf/start.sh /tmp/start.sh

RUN mkdir -p /run/mysqld
RUN chown -R mysql:root /run/mysqld
RUN chown -R mysql:mysql /var/lib/mysql

ENTRYPOINT ["bash", "tmp/start.sh"]

CMD ["mysqld"]
