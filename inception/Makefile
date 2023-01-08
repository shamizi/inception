NAME = inception
COMPOSE = /usr/bin/docker-compose
PATH = -f srcs/docker-compose.yml

all: ${NAME}

${NAME}: 
	@/usr/bin/sudo mkdir -p /home/shamizi/data/wordpress
	@/usr/bin/sudo mkdir -p /home/shamizi/data/mariadb
	${COMPOSE} ${PATH} up -d --build

start:
	${COMPOSE} ${PATH} start
restart:
	${COMPOSE} ${PATH} restart

stop:
	${COMPOSE} ${PATH} stop

clean:
	${COMPOSE} ${PATH} down

fclean:
	${COMPOSE} ${PATH} down --rmi all -v
	@/usr/bin/bash srcs/fclean.sh
