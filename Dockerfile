FROM alpine

RUN apk update --no-cache \
    && apk add --no-cache transmission-daemon

COPY ./settings.json /etc/transmission-daemon/settings.json

CMD ["transmission-daemon","--foreground","--config-dir", "/etc/transmission-daemon"]
