NAME = inception
COMPOSE = docker-compose
PATH_DOC = -f srcs/docker-compose.yml

all: ${NAME}

${NAME}: 
	@sudo mkdir -p /home/shamizi/data/wordpress
	@sudo mkdir -p /home/shamizi/data/mariadb
	${COMPOSE} ${PATH_DOC} up -d --build

start:
	${COMPOSE} ${PATH_DOC} start
restart:
	${COMPOSE} ${PATH_DOC} restart

stop:
	${COMPOSE} ${PATH_DOC} stop

logs:
	${COMPOSE} ${PATH_DOC} logs

clean:
	${COMPOSE} ${PATH_DOC} down

fclean:
	${COMPOSE} ${PATH_DOC} down --rmi all -v
	sudo rm -rf /home/shamizi/data
# sudo docker volume rm $(docker volume ls -q)
