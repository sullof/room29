#!/usr/bin/env bash

docker stop room-29
docker rm room-29

source .default.env && docker run -d \
  --name room-29 \
  -p 2368:2368 \
  -e url=https://room29.art \
  --restart unless-stopped \
  -v $PWD/content:/var/lib/ghost/content \
  -e NODE_ENV=production \
  -e VIRTUAL_HOST=room29.art \
  -e LETSENCRYPT_HOST=room29.art \
  -e LETSENCRYPT_EMAIL=admin@sullo.co \
  ghost

