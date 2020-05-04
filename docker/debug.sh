#!/usr/bin/env bash

docker stop room-29-debug
docker rm room-29-debug

docker stop room-29
docker rm room-29

source .default.env && docker run -it \
  --name room-29-debug \
  --link redis-local:redis \
  -p 9050 \
  -v $PWD:/usr/src/app \
  -v /vol/log/room-29_dapp:/var/log/room-29_dapp \
  -e VIRTUAL_HOST=sullo.co,www.sullo.co,francesco.sullo.co \
  -e LETSENCRYPT_HOST=sullo.co,www.sullo.co,francesco.sullo.co \
  -e LETSENCRYPT_EMAIL=admin@sullo.co \
  -w /usr/src/app node:carbon npm run start

