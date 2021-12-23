ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN \
    set -x \
    apk add --no-cache python3 && apk add --no-cache openssl \
    && apk add --no-cache alsa-plugins-pulse --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/ \
    && apk add --no-cache libmpdclient --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/ \
    && apk add --no-cache libmicrohttpd --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/ \
    && apk add --no-cache jsoncpp --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/ \
    && apk add --no-cache libnpupnp --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/ \
    && apk add --no-cache upmpdcli --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing/ \
    && apk add --no-cache mpd --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/

WORKDIR /
COPY rootfs /
