#!/usr/bin/env bash

docker stop room-29-dev
docker rm room-29-dev

source .default.env && docker run -it --rm \
  --name room-29-dev \
  -p 2368:2368 \
  -v $PWD/content:/var/lib/ghost/content \
  -e NODE_ENV=development \
  -e url=http://room29.art.localhost \
  -e VIRTUAL_HOST=room29.art.localhost \
  ghost
