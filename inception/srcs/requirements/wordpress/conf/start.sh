#!/bin/bash

wp core download --allow-root
wp config create --dbname=wordpress --dbuser=$LOGIN --dbpass=$PASSWORD --dbhost=mariadb --dbcharset="utf8" --dbcollate="utf8_general_ci" --allow-root
wp core instal --url=$DOMAIN/wordpress --title=inception --admin_user=$LOGIN --admin_password=$PASSWORD --admin_email=$EMAIL --skip-email --allow-root
wp user create $GUEST $GUEST_EMAIL --user_pass=$GUEST_PASSWORD --role=subscriber --allow-root

exec "$@"
