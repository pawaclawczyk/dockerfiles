ARG VERSION

FROM pawaclawczyk/php:${VERSION}

ENV CORE_EXTENSIONS pcntl sysvsem sysvshm

RUN docker-php-ext-install ${CORE_EXTENSIONS}

ENV PECL_EXTENSIONS eio ev

RUN pecl install ${PECL_EXTENSIONS} && docker-php-ext-enable ${PECL_EXTENSIONS}

CMD ["php", "-a"]
