NAME = inception
COMPOSE = docker-compose
PATH = =f srcs/docker-compose.yml

all: ${NAME}

${NAME}: 
	cat /etc/hosts | if grep -P "127.0.0.1\tshamizi.42.fr"; then sudo sh -c 'echo "127.0.0.1\tshamizi.42.fr" >> /etc/hosts'; fi
	sudo mkdir -p /home/shamizi/data/wordpress
	sudo mkdir -p /home/shamizi/data/mariadb
	${COMPOSE} ${PATH} up -d --build

start:
	${COMPOSE} ${path} start
restart:
	${COMPOSE} ${path} restart

stop:
	${COMPOSE} ${path} stop

clean:
	${COMPOSE} ${path} down

fclean:
	${COMPOSE} ${path} down --rmi all -v
	docker rmi -f $(docker images --filter "dangling=true" -q --no-trunc) 2> /dev/null
	sudo rm-rf /home/shamizi/data
