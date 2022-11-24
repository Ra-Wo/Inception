# run docker-compose file to start the containers
all:
	@docker-compose -f ./docker-compose.yml up

# stop all containers
down:
	@docker-compose -f ./docker-compose.yml down

# build the images
re:
	@docker-compose -f docker-compose.yml up --build

# clean docker from all containers and images that are created this project
clean:
	echo "Cleaning ..."
	docker system prune -f
	docker stop $$(docker ps -qa) 2>/dev/null;\
	docker rm $$(docker ps -qa)  2>/dev/null; \
	docker rmi -f $$(docker images -qa)  2>/dev/null; \
	docker volume rm $$(docker volume ls -q)  2>/dev/null;\
	docker network rm $$(docker network ls -q)  2>/dev/null;\
	echo "Cleaning VL Disc Space..."