# Aria2 ProMax for Docker

Enhanced Aria2-Pro:

1. Ban leechers
2. Anime trackers

## Example of `docker-compose.yaml`

```yaml
version: "3"

services:
  aria2-pro:
    container_name: aria2
    image: ghcr.io/apocalypsor/aria2-promax
    environment:
      PUID: 65534
      PGID: 65534
      RPC_SECRET: secret
      RPC_PORT: 46800
      LISTEN_PORT: 46234
      UPDATE_TRACKERS: 'true'
      TZ: Asia/Shanghai
      SPECIAL_MODE: rclone
      CUSTOM_TRACKER_URL: 'https://raw.dov.moe/Apocalypsor/Aria2-ProMax/tracker/all.list'
    volumes:
      - ./config:/config
    ports:
      - 46800:46800
      - 46234:46234
      - 46234:46234/udp
    cap_add:
      - NET_ADMIN
    restart: unless-stopped
    logging:
      driver: json-file
      options:
        max-size: 1m
```

> NOTICE: NET_ADMIN is necessary for ipset

For more `env`, please refer to [P3TERX/Aria2-Pro-Docker](https://github.com/P3TERX/Aria2-Pro-Docker)

## Credit

+ [P3TERX/Aria2-Pro-Docker](P3TERX/Aria2-Pro-Docker)

+ [aria2_ban_thunder](https://github.com/makeding/aria2_ban_thunder)

+ [animeTrackerList](https://github.com/DeSireFire/animeTrackerList)
