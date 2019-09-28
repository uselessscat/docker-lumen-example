FROM php:7.3-cli-buster

CMD php -S 0.0.0.0:8000 -t /src/public
