From debian:buster

Run apt-get update -y \
&& apt-get install vim -y \
&& apt-get install php -y \
&& apt-get install mariadb-server -y \
&& chown -R www-data /var/www/html

COPY ./conf/my.cnf /etc/mysql/my.cnf
COPY ./utils/script_mariadb /

Run mkdir -p /run/mysqld
Run chown -R mysql:mysql /run/mysqld

CMD ["sh", "/script_mariadb"]
#CMD ["tail", "-f", "/dev/null"]

