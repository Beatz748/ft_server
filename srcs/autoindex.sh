if grep -q "autoindex on;" /etc/nginx/sites-avaible/default
then
    sed -i 's/autoindex on;/autoindex off;/' /etc/nginx/sites-avaible/default
    nginx -s reload
elif grep -q "autoindex off;" /etc/nginx/sites-avaible/default
then
    sed -i 's/autoindex off;/autoindex on;/' /etc/nginx/sites-avaible/default
    nginx -s reload
fi