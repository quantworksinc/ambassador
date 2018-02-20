#! /bin/ash

function write_auth() {
    local username=${USERNAME};
    local password=$(openssl passwd -crypt ${PASSWORD});
    printf "${username}:${password}\n" \
        > /etc/nginx/auth;
}

function write_config() {
    envsubst '$$DESTINATION' \
        < nginx.tpl.conf \
        > /etc/nginx/nginx.conf;
    if [ -n "$DEBUG" ]; then
        cat /etc/nginx/nginx.conf;
    fi
}

write_auth;
write_config;
nginx -g 'daemon off;';
