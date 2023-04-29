From debian:buster

Run apt-get update -y \
&& apt-get install vim -y \
&& apt-get install nginx -y \
&& apt-get install openssl -y \
&& chown -R www-data /var/www/html \
&& rm -f /etc/nginx/sites-enabled/default \
&& mkdir -p /etc/nginx/ssl \
&& mkdir /conf

COPY conf/wordpress.conf /etc/nginx/conf.d/

COPY conf/openssl_form.conf /conf/

Run ln -s /etc/nginx/conf.d/wordpress.conf /etc/nginx/sites-enabled/

Run openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt -config /conf/openssl_form.conf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
