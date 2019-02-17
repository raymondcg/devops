# linux command, this cleans out Docker
alias docker-clean' \
	docker ps --no-trunc -aqf "status=exited" | xargs docker rm; \
	docker image --no-trunc -aqf "dangling=true" | xargs docker rmi; \
	docker volume ls -qf "dangling=true" | xargs docker volume rm; \
	docker image prune -a -f ; \
	docker container prune -f ; \
	docker volume prune -f ; \
	docker network prune -f ; \
	docker system prune -a -f'