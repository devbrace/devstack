FROM php:8.2-apache

LABEL authors="patrik"

RUN apt-get update  \
    && apt-get install -y \
    curl \
    git \
    libzip-dev \
    unzip

WORKDIR /code