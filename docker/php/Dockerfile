ARG PHP_TAG=alpine
FROM php:${PHP_TAG}

# ---- system deps ----
RUN apk add --no-cache \
        git \
        unzip \
        bash \
        icu-dev \
        libzip-dev \
        oniguruma-dev \
        zlib-dev

# ---- PHP extensions ----
RUN docker-php-ext-install pdo_mysql intl zip opcache

# ---- Composer ----
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www
CMD ["php-fpm"]