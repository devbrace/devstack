#!/bin/bash

cd laravel/docker

docker build -t brace-laravel .

echo "Docker image for Laravel was successfully built"