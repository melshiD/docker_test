FROM php:8.1-fpm

WORKDIR /var/www/html

# COPY src .

RUN docker-php-ext-install pdo pdo_mysql

RUN addgroup --gid 1000 laravel

RUN adduser laravel --gid 1000 --shell /bin/sh

USER laravel