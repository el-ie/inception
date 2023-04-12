From debian:buster

Run apt-get update -y \
&& apt-get install vim -y \
&& apt-get install nginx -y \
&& chown -R www-data /var/www/html \
&& apt-get install wget -y

#COPY conf/wordpress.conf /etc/nginx/conf.d/


EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
