#!/bin/bash

EXTRAS="$@"
DBNAME="$(awk '/name/ {print $2}' /root/.secret/dbdata.yaml)"
DBPASS="$(awk '/mysql/ {print $2}' /root/.secret/dbdata.yaml)"

cd /var/www/html

drush site-install standard --account-name=${ADMIN} --account-pass=${ADMINPASS} \
	--db-url=mysql://root:${DBPASS}@db/${DBNAME} -y
