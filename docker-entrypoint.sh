#!/bin/sh
service supervisor start 
/etc/init.d/php5-fpm start
nginx -g 'daemon off;'
