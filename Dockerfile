FROM php:5.5-apache

RUN apt-get update -qq \
  && apt-get install -y \
  && pecl install xdebug-2.5.5 \
  && docker-php-ext-enable xdebug

COPY ./php.ini /usr/local/etc/php/
COPY . /var/www/html

WORKDIR /work
