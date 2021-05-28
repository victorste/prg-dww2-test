# image: php
FROM php:7.2-apache

RUN apt install -y apache2


COPY . /var/www/html/

WORKDIR /var/www/html/

EXPOSE 81/tcp


CMD service apache2 start && bash