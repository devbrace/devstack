# Brace development stack

Every web image have 

- PHP 8.2 - apache
- node v18.18.2
- npm v10.2.2
- composer v2.6.5

## How to use this?

You probably want to use these images in another project without modification. So you can just build the images and use them
in another project.

If you want to somehow modify it, you can copy everything in an image directory which do you want to use in your project. 
If you want work with laravel - copy everything from ``./laravel`` directory.

## Images

In the braces is the image name.

### Laravel [brace-laravel]

Image ready for the development in Laravel.

Build image:

```shell
sh build-laravel.sh
```

___

### PHP [brace-php]

Basic PHP image for building apps.

Build image:

```shell
sh build-php.sh
```

INFO: Document root is set to /.public

___

### PHP - simple [brace-php-simple]

The same as the PHP image but the document root is not **public** directory.

Build image:

```shell
sh build-php-simple.sh
```

___

### PHP QA [brace-php-qa]

Simple docker image for running QA tools

```shell
sh build-php-qa.sh
```

___

### You can build all the images with the command:
```shell
sh build-all.sh
```

___

### xDebug

Use 0.0.0.0 as the host for the xDebug.