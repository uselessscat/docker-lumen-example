FROM php:7.3-fpm-buster

# install dependencies
RUN apt-get update \
    && apt-get install -y libpq-dev \
    && docker-php-ext-install -j$(nproc) pdo pdo_pgsql