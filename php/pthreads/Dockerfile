ARG VERSION

FROM php:${VERSION}

ENV BUILD_DEPENDENCIES \
        git

RUN apt-get update && \
    apt-get install --yes \
        ${BUILD_DEPENDENCIES}

RUN cd /tmp && \
    git clone https://github.com/krakjoe/pthreads.git && \
    cd pthreads && \
    phpize && \
    ./configure && \
    make && \
    make install && \
    docker-php-ext-enable pthreads
