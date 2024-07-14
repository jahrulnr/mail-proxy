build-app:
	docker build -t proxy-mail .

run: build-app
	docker-compose up -d && docker logs proxy-mail

bash:
	docker exec -it proxy-mail bash