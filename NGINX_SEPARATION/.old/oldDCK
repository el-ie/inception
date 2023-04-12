From debian:buster

Run apt-get update -y \
&& apt-get install mariadb-server -y \
&& apt-get install nginx -y \
&& apt-get install wget -y \
&& apt-get install vim -y \
&& mkdir -p /srv/www \
&& wget https://wordpress.org/latest.tar.gz \
&& tar xzf latest.tar.gz -C /srv/www/ \
&& chown -R www-data /srv

CMD ["tail", "-f", "/dev/null"]
