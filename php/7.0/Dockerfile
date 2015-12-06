FROM php:7.0

RUN apt-get update && apt-get install -y libicu-dev zlib1g-dev
RUN docker-php-ext-install opcache intl mbstring zip

COPY php.ini /usr/local/etc/php/php.ini

CMD ["php", "-a"]
