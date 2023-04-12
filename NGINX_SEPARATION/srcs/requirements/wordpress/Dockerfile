From debian:buster


Run apt-get update -y \
&& apt-get install mariadb-server -y \
&& apt-get install wget -y \
&& apt-get install vim -y \
&& apt-get install php -y \
&& apt-get install php7.3-mysql -y \
&& apt-get install php7.3-fpm -y \
&& chown -R www-data /var/www/html
#&& mkdir -p /srv/www \

#COPY ./wordpress.conf /etc/nginx/sites-available/

#Run ln -s /etc/nginx/sites-available/wordpress.conf /etc/nginx/sites-enabled/

#COPY ./script_launch1 /
COPY ./wp-config.php /srv/www/wordpress/

#ENTRYPOINT ["bash", "/script_launch1"]

CMD ["php7.3-fpm", "-F", "-R"]
#CMD ["&&", "tail", "-f", "/dev/null"]
