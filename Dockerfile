FROM php:7.3-apache
RUN apt-get update \
    && apt-get install -y libpng-dev libicu-dev libzip-dev libxml2-dev curl libssl-dev

RUN docker-php-source extract \
    && docker-php-ext-install gd intl zip pdo_mysql opcache \
    && docker-php-source delete

RUN a2enmod rewrite

RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer
