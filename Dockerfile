FROM php

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

WORKDIR /app
COPY . .
RUN composer install
ENTRYPOINT ["php", "artisan", "serve", "--host=0.0.0.0"]