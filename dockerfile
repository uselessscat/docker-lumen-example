FROM composer:2 as deps

# composer uses /app to do installation
COPY /src /app

RUN composer install

# build the app container
FROM php:8.3-fpm-bookworm

# install dependencies
RUN apt-get update \
    && apt-get install -y libpq-dev \
    && docker-php-ext-install -j$(nproc) pdo pdo_pgsql

COPY /src /src
COPY --from=deps /app/vendor /src/vendor

WORKDIR /src