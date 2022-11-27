# run docker-compose file to start the containers
all:
	@docker-compose -f ./srcs/docker-compose.yml up

# stop all containers
down:
	@docker-compose -f ./srcs/docker-compose.yml down

# build the images
re:
	@docker-compose -f ./srcs/docker-compose.yml up --build

# clean docker from all containers and images that are created this project
clean:
	docker system prune -f
	docker stop $$(docker ps -qa) ;\
	docker rm $$(docker ps -qa) ; \
	docker rmi -f $$(docker images -qa | grep -v "1036dd279580") ; \
	docker volume rm $$(docker volume ls -q) ;\
	docker network rm $$(docker network ls -q)  ;\
	rm -rf /home/roudouch/data/db/*
	rm -rf /home/roudouch/data/wp/*

create_data_paths:
	@mkdir /home/roudouch/data
	@mkdir /home/roudouch/data/db
	@mkdir /home/roudouch/data/wp

