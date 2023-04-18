From debian:buster

Run apt-get update -y \
&& apt-get install wget -y \
&& apt-get install vim -y \
&& apt-get install php -y \
&& apt-get install php7.3-mysql -y \
&& apt-get install php7.3-fpm -y \
&& chown -R www-data /var/www/html \
&& wget https://wordpress.org/latest.tar.gz \
&& tar xzf latest.tar.gz -C /var/www/html \
&& mkdir -p /var/run/php \
&& mkdir -p /root/utils	

COPY ./conf/wp-config.php /

#ajout
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/

COPY ./script_wordpress /root/utils/

CMD ["sh", "/root/utils/script_wordpress"]
#CMD ["php-fpm7.3", "-F", "-R"]
