#!/bin/bash

cd laravel/docker

docker build -t brace-php-qa .

echo "Docker image for PHP QA was successfully built"