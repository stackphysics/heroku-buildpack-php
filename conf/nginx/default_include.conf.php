location / {
        root   $root_path;
        index  index.php index.html index.htm;

        # if file exists return it right away
        if (-f $request_filename) {
            break;
        }

        # otherwise rewrite it
        if (!-e $request_filename) {
            rewrite ^(.+)$ /index.php?_url=/$1 last;
            break;
        }
    }
# for people with app root as doc root, restrict access to a few things
location ~ ^/(composer\.|Procfile$|<?=getenv('COMPOSER_VENDOR_DIR')?>/|<?=getenv('COMPOSER_BIN_DIR')?>/) {
    deny all;
}
