From debian:buster

Run apt-get update -y \
&& apt-get install vim -y \
&& apt-get install php -y \
&& chown -R www-data /var/www/html

COPY ./conf/my.cnf /etc/mysql/my.cnf


#ARG MYSQL_DATABASE
#ARG MYSQL_USER
#ARG MYSQL_USER_PASS

COPY ./script_mariadb /

#AJOUT
Run apt-get install mariadb-server -y

CMD ["sh", "/script_mariadb"]
#CMD ["tail", "-f", "/dev/null"]

