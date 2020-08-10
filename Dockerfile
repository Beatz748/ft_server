FROM debian:buster

RUN mkdir -p /usr/srcs
WORKDIR 	/usr/srcs

RUN apt -y update && apt -y upgrade

RUN apt-get -y install vim curl wget nginx \
default-mysql-server php7.3 php3.7-fpm php7.3-mysql \
php-json php-mbstring openssl wordpress

CMD ["gcc ft_hello.c"]

ENTRYPOINT ["./a.out"]
