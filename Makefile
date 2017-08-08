php_71:
	docker build --build-arg VERSION=7.1 --tag pawaclawczyk/php:7.1 --tag pawaclawczyk/php:latest php/base

php_72:
	docker build --build-arg VERSION=rc --tag pawaclawczyk/php:7.2 --tag pawaclawczyk/php:rc php/base

php_71_async:
	docker build --build-arg VERSION=7.1 --tag pawaclawczyk/php:async-7.1 --tag pawaclawczyk/php:async-latest php/async

php_72_async:
	docker build --build-arg VERSION=rc --tag pawaclawczyk/php:async-7.2 --tag pawaclawczyk/php:async-rc php/async

#php_71_pthreads:
#	docker build --build-arg VERSION=7.1-zts --tag pawaclawczyk/php:pthreads-7.1 --tag pawaclawczyk/php:pthreads-latest php/pthreads

php_72_pthreads:
	docker build --build-arg VERSION=rc-zts --tag pawaclawczyk/php:pthreads-7.2 --tag pawaclawczyk/php:pthreads-rc php/pthreads

push:
	docker login
	docker push pawaclawczyk/php

all: php_71 php_72 php_71_async php_72_async php_72_pthreads push
