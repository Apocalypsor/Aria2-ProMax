FROM p3terx/aria2-pro

ARG UPSTEAM_HASH=

COPY rootfs /

RUN apk add --no-cache --update nodejs ipset git npm iptables \
    && git clone https://github.com/makeding/aria2_ban_thunder.git /Aria2-Ban \
    && cd /Aria2-Ban && npm install /Aria2-Ban 
