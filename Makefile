all:
	mkdir -p /home/eamar/data/site
	mkdir -p /home/eamar/data/database
	sudo chmod 777 /home/eamar/data/wordpress
	sudo chmod 777 /home/eamar/data/mariadb
	docker compose -f ./srcs/docker-compose.yml up -d --build

build:
	docker compose -f ./srcs/docker-compose.yml up -d --build

stop:
	docker compose -f ./srcs/docker-compose.yml stop

down:
	docker compose -f ./srcs/docker-compose.yml down

clean: down
	docker system prune -af
	docker volume prune -f

fclean : clean
	sudo rm -rf /home/eamar/data/site
	sudo rm -rf /home/eamar/data/database

re: fclean all

log :
	docker compose -f srcs/docker-compose.yml logs
