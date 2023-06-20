# Brace development stack

- PHP 8.2 - apache
- MariaDB 10
- node v18.16.0
- npm v9.7.1
- composer v2.5.8

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

### Need to use composer or npm?

Please run commands from the container. This can avoid issues with different versions of these tools.

### Xdebug

It should be working for mac, linux and windows.

#### PHPStorm settings:

**Host:** localhost

#### Path mapping:

```<project-root>: /var/www/html```

If you have a ``public`` directory, map it as well:

``<project-root>/public: /var/www/html/public``