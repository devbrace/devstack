# Brace development stack

- PHP 8.2 - apache
- node v18.16.0
- npm v9.7.1
- MariaDB 10

## How to use this?

Just copy these files into your project.

Does your project contains .env file? Copy the environment variables from .env and paste
them to your existing file.

### Start containers

Run this command from the project root directory.

```shell
docker compose up -d 
```

### Document root

Current project document root is ``<project>/public``

#### Do you want use ``/`` as the document root?

Comment 4. and 5. line in the ``./docker/Dockerfile``

```dockerfile
COPY apache-config.conf /etc/apache2/sites-available/000-default.conf
RUN a2enmod rewrite
```