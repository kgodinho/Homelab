#!/bin/bash

# Convert privkey. copy new certs over to /etc/opensearch/. restart opensearch

openssl pkcs8 -topk8 -nocrypt -in /etc/letsencrypt/live/opensearch.kylegodinho.com/privkey.pem -out /etc/letsencrypt/live/opensearch.kylegodinho.com/privkey-pkcs8.pem

cp /etc/letsencrypt/live/opensearch.kylegodinho.com/fullchain.pem /etc/opensearch/fullchain.pem
cp /etc/letsencrypt/live/opensearch.kylegodinho.com/chain.pem /etc/opensearch/chain.pem
cp /etc/letsencrypt/live/opensearch.kylegodinho.com/privkey-pkcs8.pem /etc/opensearch/privkey-pkcs8.pem

/usr/bin/systemctl restart opensearch.service