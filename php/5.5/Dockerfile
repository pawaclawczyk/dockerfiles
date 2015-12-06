FROM php:5.5

RUN apt-get update && apt-get install -y libicu-dev zlib1g-dev --no-install-recommends
RUN docker-php-ext-install opcache intl mbstring zip

COPY php.ini /usr/local/etc/php/php.ini

CMD ["php", "-a"]
