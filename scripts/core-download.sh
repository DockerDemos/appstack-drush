#!/bin/bash

EXTRAS="$@"

drush dl drupal --destination=/var/www --drupal-project-rename=html -y ${EXTRAS}

# Change owner to php-fpm user
chown -R 999 /var/www/html/sites/default/files
