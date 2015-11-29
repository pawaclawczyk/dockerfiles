FROM pwc/php:7

RUN apt-get update && apt-get -y install git

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN curl http://get.sensiolabs.org/php-cs-fixer.phar -o /usr/local/bin/php-cs-fixer && chmod +x /usr/local/bin/php-cs-fixer

CMD ["php", "--version"]
