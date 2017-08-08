## Docker Hub Link

https://hub.docker.com/r/pawaclawczyk/php/

## Why?

I've set up this repository because...

... I believe that using PHP extensions is good practice and there is a lot of useful extensions.

... I want to get rid of writing long Dockerfiles just to load extensions .

## What's included?

### Base images
Extends official PHP images.

Extensions:
 - bcmath
 - ds (see [efficient data structures for PHP](https://medium.com/@rtheunissen/efficient-data-structures-for-php-7-9dda7af674cd))
 - mbstring
 - opcache
 - pdo
 - pdo_mysql
 - sodium (see [libsodium - modern cryptographic library](https://download.libsodium.org/doc/))
 - zip

### Async images
Extend base images.

Extensions:
 - eio
 - ev
 - pcntl
 - sysvsem
 - sysvshm

### Pthreads images
Extend official PHP images.

Extensions:
 - pthreads
 
### Do you have suggestions?
Please create an issue or PR or just tweet me [@pawaclawczyk](https://twitter.com/pawaclawczyk).
