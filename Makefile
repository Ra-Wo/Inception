all: 
	@docker-compose -f ./docker-compose.yml up
down:
	@docker-compose -f ./docker-compose.yml down
re:
	@docker-compose -f docker-compose.yml up --build
clean:
	docker system prune -f ; 			\
	docker rm -f mariadb wordpress ; 	\
	docker rmi -f mariadb wordpress ; 	\
	docker volume rm db wp ;			\
	docker network rm Docker-Network ; 	\
	rm -rf ./data/db/* ./data/wp/* ./data/db/.[!.]* ./data/wp/.[!.]*

.PHONY: all re down clean
