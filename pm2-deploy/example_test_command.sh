#!/usr/bin/env bash

set -e

# if these folders exist: /var/nginx_cache and /var/ngx_pagespeed_cache
# then delete them and recreate them
if [ -d "/var/nginx_cache" ]; then
    printf "============ Delete and recreate /var/nginx_cache\n"
    sudo rm -rf /var/nginx_cache
    sudo mkdir /var/nginx_cache/
fi

if [ -d "/var/ngx_pagespeed_cache" ]; then
    printf "============ Delete and recreate /var/ngx_pagespeed_cache\n"
    sudo rm -rf /var/ngx_pagespeed_cache
    sudo mkdir /var/ngx_pagespeed_cache/
fi

## Test nginx and php-fpm config
printf "============ Test nginx\n"
sudo nginx -t
