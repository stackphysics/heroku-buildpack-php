#!/bin/bash
# Build Path: /app/.heroku/php/


# fail hard
set -o pipefail
# fail harder
set -eux


dep_url=git://github.com/phalcon/cphalcon.git
PHALCON_DIR=cphalcon
echo "-----> Building Phalcon..."

### Phalcon
echo "[LOG] Downloading PhalconPHP"
git clone $dep_url -q
if [ ! -d "$PHALCON_DIR" ]; then
  echo "[ERROR] Failed to find phalconphp directory $PHALCON_DIR"
  exit
fi
cd $PHALCON_DIR/build

# /app/php/bin/phpize
# ./configure --enable-phalcon --with-php-config=$PHP_ROOT/bin/php-config
# make
# make install
export PATH=$PATH:/app/.heroku/php/bin
phpize
/app/.heroku/php/bin/phpize
bash ./install
cd ../..
echo "-----> Done."
