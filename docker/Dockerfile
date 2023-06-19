FROM php:8.2-apache
LABEL authors="patrik"

COPY apache-config.conf /etc/apache2/sites-available/000-default.conf
RUN a2enmod rewrite

ARG NODE_VERSION=18

RUN apt-get update  \
    && apt-get install -y \
    curl \
    git \
    libzip-dev \
    unzip

RUN curl -sLS https://deb.nodesource.com/setup_$NODE_VERSION.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g npm

RUN pecl install xdebug \
     && docker-php-ext-enable xdebug

RUN docker-php-ext-install -j$(nproc) \
  zip \
  pdo \
  pdo_mysql

RUN curl -s https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --2.5.8