# Ejemplo de aplicación con lumen y docker

Ejemplo de configuración de docker para PHP 8 y Lumen 8 con Postgres 13. También contiene configuraciones de desarrollo. 

El post original está en [Medium](https://uselessscat.medium.com/creando-una-aplicaci%C3%B3n-rest-con-docker-y-lumen-4d67da0428c4?sk=8375a14cbf0339abe99cc28183c6ddbe)

## Instrucciones

Para levantar el proyecto, luego de clonar se deben instalar las dependencias con:

    docker run --rm -ti -v /$PWD/src:/app composer install

Crear el fichero `.env` para configurar la base de datos:

    cp src/.env.example src/.env

Para ejecutar el proyecto completo usar:

    docker-compose up --build

## Licencia

MIT
