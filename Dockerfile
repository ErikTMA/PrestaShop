FROM php:7.3-apache
RUN apt-get update \
    && apt install -y libpng-dev libicu-dev
RUN docker-php-source extract \
    && docker-php-ext-install gd zip mbstring fileinfo dom curl \
    && docker-php-ext-enable gd intl zip mbstring fileinfo dom curl \
    && docker-php-source delete
