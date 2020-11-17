FROM php:7.3-apache
RUN apt-get update \
    && apt-get install -y libpng-dev libicu-dev libzip-dev libxml2-dev curl
RUN docker-php-source extract \
    && docker-php-ext-install gd intl zip \
    && docker-php-source delete
