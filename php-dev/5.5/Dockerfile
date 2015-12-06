FROM pwc/php:5.5

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN apt-get update && \
    apt-get install -y git --no-install-recommends

CMD ["php", "--version"]
