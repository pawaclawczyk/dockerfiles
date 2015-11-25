FROM php:7

RUN apt-get update && apt-get install -y libicu-dev
RUN docker-php-ext-install opcache intl mbstring

COPY php.ini /usr/local/etc/php/php.ini

CMD ["php", "-a"]

