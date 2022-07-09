#!/bin/sh

envsubst < /root/config.json.tp > /root/config.json
envsubst '\$PORT' < /root/nginx.template.conf > /root/nginx.conf


# Run V2Ray
/usr/bin/v2ray -config /root/config.json & nginx -c /root/nginx.conf -g 'daemon off;'
