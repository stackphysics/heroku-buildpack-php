#!/bin/bash
# Build Path: /app/.heroku/php/

echo "$ext_ini"
echo "important extension phalcon into php.ini"
echo "extension=phalcon.so" >> /app/.heroku/php/etc/php/php.ini
