#!/bin/bash
# Build Path: /app/.heroku/php/
ext_ini="$BP_DIR/conf/php/conf.d/"
echo "$ext_ini"
echo "important extension phalcon into php.ini"
echo "extension=phalcon.so" >> /app/.heroku/php/etc/php/php.ini
