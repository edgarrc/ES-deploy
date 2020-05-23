#!/bin/bash

docker cp odfe-kibana:/usr/share/kibana/config/kibana.yml .

# Increase the session timeout to 24h, refreshing each request
printf "\n\n#Increase session timeout\n" >> kibana.yml
echo "opendistro_security.cookie.ttl: 86400000" >> kibana.yml
echo "opendistro_security.session.ttl: 86400000" >> kibana.yml
echo "opendistro_security.session.keepalive: true" >> kibana.yml

docker cp kibana.yml odfe-kibana:/usr/share/kibana/config/kibana.yml
docker restart odfe-kibana

rm kibana.yml
