# festeip-ip-updater

To run this container use (do not forget to use your HOSTID/HOSTNAME/PASSWORD):

docker run -d \\

-e FIP_HOSTID=000000 \\

-e FIP_HOSTNAME=sub.mydomain.tld \\

-e FIP_PASSWORD=mypassword \\

-e FIP_INTERVAL=5m \\

--name festeip-ip-updater  evilmoe/festeip-ip-updater:latest
