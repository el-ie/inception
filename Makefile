all:
	sudo mkdir -p /home/eamar/data/site
	sudo mkdir -p /home/eamar/data/database
	sudo chmod 777 /home/eamar/data/site
	sudo chmod 777 /home/eamar/data/database
	docker compose -f ./srcs/docker-compose.yml up -d --build

build:
	docker compose -f ./srcs/docker-compose.yml up -d --build

stop:
	docker compose -f ./srcs/docker-compose.yml stop

start:
	docker compose -f ./srcs/docker-compose.yml start

down:
	docker compose -f ./srcs/docker-compose.yml down

clean: down
	docker system prune -af
	docker volume prune -f
	docker volume rm $$(docker volume ls -qf dangling=true)

fclean : clean
	sudo rm -rf /home/eamar/data/site
	sudo rm -rf /home/eamar/data/database

re: fclean all

log :
	docker compose -f srcs/docker-compose.yml logs
