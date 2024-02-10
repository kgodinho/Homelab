#!/bin/bash

# Convert privkey. restart graylog

openssl pkcs8 -topk8 -nocrypt -in /etc/letsencrypt/live/graylog.kylegodinho.com/privkey.pem -out /etc/letsencrypt/live/graylog.kylegodinho.com/privkey-pkcs8.pem

/usr/bin/systemctl restart graylog-server.service