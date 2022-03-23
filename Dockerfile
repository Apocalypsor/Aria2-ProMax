FROM p3terx/aria2-pro

COPY rootfs /
COPY config /etc/config

RUN apk add --no-cache --update nodejs ipset npm iptables ip6tables \
    && npm install -g aria2b
