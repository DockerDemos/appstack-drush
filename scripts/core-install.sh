#!/bin/bash

EXTRAS="$@"
DBNAME="$(awk '/name/ {print $2}' /conf/.creds/dbdata.yaml)"
DBPASS="$(awk '/mysql/ {print $2}' /conf/.creds/dbdata.yaml)"

cd /var/www/html

drush site-install standard --site-name=${TITLE} --site-mail=${ADMINEMAIL} \
	--account-name=${ADMIN} --account-pass=${ADMINPASS} --account-mail=${ADMINEMAIL} \
	--db-url=mysql://root:${DBPASS}@db/${DBNAME} -y ${EXTRAS}

# Change owner to php-fpm user
chown -R 999 /var/www/html/sites/default/files

