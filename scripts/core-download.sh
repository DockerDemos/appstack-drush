#!/bin/bash

EXTRAS="$@"

drush dl drupal --destination=/var/www --drupal-project-rename=html -y

