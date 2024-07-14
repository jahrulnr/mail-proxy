#!/bin/bash

SMTP_SERVER=$(printenv SMTP_SERVER)
# echo ${SMTP_SERVER}
sed -i "s/--smtp-port--/${SMTP_SERVER}/g" /usr/local/etc/haproxy/haproxy.cfg
# cat /usr/local/etc/haproxy/haproxy.cfg

haproxy -f /usr/local/etc/haproxy/haproxy.cfg