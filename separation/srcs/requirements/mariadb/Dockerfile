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

#CMD ["tail", "-f", "/dev/null"]

Run service mysql start \
&& mysql -e "CREATE DATABASE datata;" \
&& mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'tobi'@'wordpress.srcs_testnetwork' IDENTIFIED BY 'pass' WITH GRANT OPTION;"

CMD ["mysqld"]

#COPY ./script_mariadb /
#CMD ["bash", "/script_mariadb"]
