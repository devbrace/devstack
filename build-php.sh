#!/bin/bash

cd laravel/docker

docker build -t brace-php .

echo "Docker image for PHP was successfully built"