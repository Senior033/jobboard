FROM php:7.4.4-fpm
RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y libpng-dev libonig-dev \
    && docker-php-ext-install mbstring \
    && docker-php-ext-install gd \
    && pecl install xdebug-2.9.4 \
    && docker-php-ext-enable xdebug \
    && docker-php-source delete \
    && apt-get autoremove --purge -y && apt-get autoclean -y && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/* /var/tmp/*
