#!/bin/bash

cd laravel/docker

docker build -t brace-php-simple .

echo "Docker image for PHP (simple) was successfully built"