#!/bin/bash

# Create composer version directory
mkdir /usr/local/dockr/composer

# Download and store composer installer locally
curl -sS https://getcomposer.org/installer >> /usr/local/dockr/composer/installer

# Install version 1.8.6
php /usr/local/dockr/composer/installer --install-dir=/usr/local/dockr/composer --filename=composer_1.8.6 --version=1.8.6

# Install version 2.1.0
php /usr/local/dockr/composer/installer --install-dir=/usr/local/dockr/composer --filename=composer_2.1.0 --version=2.1.0

# Install version 2.5.0
php /usr/local/dockr/composer/installer --install-dir=/usr/local/dockr/composer --filename=composer_2.5.0 --version=2.5.0

# Set 2.2.0 as default version
cp /usr/local/dockr/composer/composer_2.5.0 /usr/bin/composer
