FROM p3terx/aria2-pro

ARG ARIA2_BAN_THUNDER_COMMIT=e4cbe3864e368d4f836679d0055742fe5d8669b9 \
    UPSTEAM_HASH=8093856c1c286c88b8ed3ed51bddcd7de8b5350dc77e320377601f65832c1f0e

COPY rootfs /

RUN apk add --no-cache --update nodejs ipset git npm iptables \
    && git clone https://github.com/makeding/aria2_ban_thunder.git /Aria2-Ban \
    && cd /Aria2-Ban && npm install /Aria2-Ban 
