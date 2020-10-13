FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install vim nginx wordpress default-mysql-server openssl \
php7.3 php7.3-fpm php-json php7.3-mysql php-mbstring

RUN apt-get update && \
apt-get upgrade -y && \
apt-get install -y vim wget php7.3-fpm php7.3-common php7.3-mysql php7.3-gmp \
php7.3-curl php7.3-intl php7.3-mbstring php7.3-xmlrpc php7.3-gd php7.3-xml \
php7.3-cli php7.3-zip php7.3-soap php7.3-imap nginx mariadb-server openssl

RUN rm -rf /etc/nginx/sites-available/default \
&& rm -rf /etc/nginx/sites-enabled/default \
&& mkdir -p /var/www/kshantel

RUN chown -R www-data /var/www/* && chmod -R 755 /var/www/*

RUN mkdir /etc/nginx/ssl

ADD https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.tar.gz phpmyadmin.tar.gz

RUN tar xvzf phpmyadmin.tar.gz 
RUN mv phpMyAdmin-5.0.2-all-languages /var/www/kshantel/phpmyadmin
RUN mv /usr/share/wordpress /var/www/kshantel

COPY srcs/kshantel.key /etc/nginx/ssl/kshantel.key

COPY srcs/kshantel.pem /etc/nginx/ssl/kshantel.pem

COPY srcs/kshantel /etc/nginx/sites-available/

RUN ln -s /etc/nginx/sites-available/kshantel /etc/nginx/sites-enabled/kshantel

COPY srcs/init_db.sh /var/

RUN bash /var/init_db.sh

COPY srcs/config.inc.php /var/www/kshantel/phpmyadmin

COPY srcs/wp-config.php /var/www/kshantel/wordpress

RUN rm -rf /var/www/kshantel/phpmyadmin/config.sample.inc.php

EXPOSE 80 443

COPY srcs/autoindex.sh /var/

COPY srcs/start.sh /var/

CMD bash /var/start.sh
