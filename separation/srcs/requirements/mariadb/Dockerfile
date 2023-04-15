From debian:buster

Run apt-get update -y \
&& apt-get install vim -y \
&& apt-get install php -y \
&& apt-get install php7.3-mysql -y \
&& apt-get install php7.3-fpm -y \
&& apt-get install mariadb-server -y \
&& chown -R www-data /var/www/html
#&& mkdir -p /root/utils	

#CMD ["sh", "/root/utils/script_wordpress"]

CMD ["tail", "-f", "/dev/null"]
