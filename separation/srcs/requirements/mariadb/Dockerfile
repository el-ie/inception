From debian:buster

Run apt-get update -y \
&& apt-get install vim -y \
&& apt-get install php -y \
&& apt-get install mariadb-server -y \
&& chown -R www-data /var/www/html

COPY ./conf/my.cnf /etc/mysql/my.cnf

COPY ./script_mariadb /

CMD ["sh", "/script_mariadb"]
#CMD ["tail", "-f", "/dev/null"]

