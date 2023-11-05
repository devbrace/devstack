#!/bin/bash

cd php-qa/docker

docker build -t brace-php-qa .

echo "Docker image for PHP QA was successfully built"