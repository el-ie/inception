From debian:buster

Run apt-get update -y \
&& apt-get install vim -y \
&& apt-get install nginx -y \
&& chown -R www-data /var/www/html \
&& rm -f /etc/nginx/sites-enabled/default \
&& mkdir -p /etc/nginx/ssl \
&& openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt
#REPARER ICI, c'est normal que ca ne marche pas car il faut repondre a un prompt a cet endroit

COPY conf/wordpress.conf /etc/nginx/conf.d/

Run ln -s /etc/nginx/conf.d/wordpress.conf /etc/nginx/sites-enabled/

#EXPOSE 80
#EXPOSE 443 mettre ?

#Run nginx -g daemon off;
CMD ["tail", "-f", "/dev/null"]
#CMD ["nginx", "-g", "daemon off;"] # REMETTRE
