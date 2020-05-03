#!/bin/sh
docker run -d \
-e FIP_HOSTNAME=sub.mydomain.tld \
-e FIP_PASSWORD=mypassword \
-e FIP_INTERVAL=5m \
--name festeip-ip-updater  evilmoe/festeip-ip-updater