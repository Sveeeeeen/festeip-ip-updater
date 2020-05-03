FROM alpine:latest
LABEL maintainer="sven.bloch@gmail.com"

RUN apk add --update \
bash curl dig

COPY updater.sh /updater.sh
RUN chown root:root /updater.sh
RUN chmod 700 /updater.sh

CMD ["/updater.sh"]