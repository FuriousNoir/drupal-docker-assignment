FROM drupal:11-apache

RUN apt-get update && apt-get install -y     git     unzip     default-mysql-client     && rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html
