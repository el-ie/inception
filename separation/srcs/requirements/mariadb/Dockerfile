From debian:buster

Run apt-get update -y \
&& apt-get install vim -y \
&& apt-get install php -y \
&& apt-get install mariadb-server -y \
&& chown -R www-data /var/www/html
#&& apt-get install php7.3-mysql -y \
#&& apt-get install php7.3-fpm -y \
#&& apt-get install mariadb-client -y \
#&& mkdir -p /root/utils	

COPY ./conf/my.cnf /etc/mysql/my.cnf

CMD ["tail", "-f", "/dev/null"]

#COPY ./script_mariadb /
#CMD ["sh", "/script_mariadb"]
