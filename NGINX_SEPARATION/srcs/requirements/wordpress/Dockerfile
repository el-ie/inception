From debian:buster



Run apt-get update -y \
&& apt-get install mariadb-server -y \
&& apt-get install wget -y \
&& apt-get install vim -y \
&& apt-get install php -y \
&& apt-get install php7.3-mysql -y \
&& apt-get install php7.3-fpm -y \
&& chown -R www-data /var/www/html \
&& wget https://wordpress.org/latest.tar.gz \
&& tar xzf latest.tar.gz -C /var/www/html \
&& mkdir -p /var/run/php


#COPY ./conf/wp-config.php /var/www/html/


#CMD ["php-fpm7.3", "-F", "-R"]
CMD ["sh", "./script_wordpress"]
