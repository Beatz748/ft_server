NAME = ft_server
VERSION = latest

.PHONY: build
build:
	docker build -t $(NAME):$(VERSION) .

.PHONY: run
run:
	docker run -p 80:80 -p 443:443 --name $(NAME) -d $(NAME):$(VERSION)

.PHONY : rm
rm:
	docker stop $(NAME)
	docker rm $(NAME)
	docker rmi $(NAME):$(VERSION)

.PHONY: exec
exec:
	docker exec -it $(NAME) /bin/bash
