service nginx start
service php7.3-fpm start
service mysql restart
while true; do
	sleep 1000
done
