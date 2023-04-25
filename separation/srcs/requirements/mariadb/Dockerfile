#&& apt-get install php7.3-mysql -y \#&& apt-get install php7.3-fpm -y \#&& apt-get install mariadb-client -y \#&& mkdir -p /root/utils	
From debian:buster

Run apt-get update -y \
&& apt-get install vim -y \
&& apt-get install php -y \
&& apt-get install mariadb-server -y \
&& chown -R www-data /var/www/html

COPY ./conf/my.cnf /etc/mysql/my.cnf


ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_USER_PASS

Run service mysql start \
&& mysql -e "CREATE DATABASE $MYSQL_DATABASE;" \
&& mysql -e "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'wordpress.srcs_inception_network' IDENTIFIED BY '$MYSQL_USER_PASS' WITH GRANT OPTION;" \
&& mysql -e "FLUSH PRIVILEGES;"

CMD ["mysqld"]

#COPY ./script /root
#Run chmod 777 /root/script
#CMD ["bash", "/root/script"]

#CMD ["tail", "-f", "/dev/null"]
