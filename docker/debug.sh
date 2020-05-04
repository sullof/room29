#!/usr/bin/env bash

docker stop blog-sullo-co-debug
docker rm blog-sullo-co-debug

docker stop blog-sullo-co
docker rm blog-sullo-co

source .default.env && docker run -it \
  --name blog-sullo-co-debug \
  --link redis-local:redis \
  -p 9050 \
  -v $PWD:/usr/src/app \
  -v /vol/log/blog-sullo-co_dapp:/var/log/blog-sullo-co_dapp \
  -e VIRTUAL_HOST=sullo.co,www.sullo.co,francesco.sullo.co \
  -e LETSENCRYPT_HOST=sullo.co,www.sullo.co,francesco.sullo.co \
  -e LETSENCRYPT_EMAIL=admin@sullo.co \
  -w /usr/src/app node:carbon npm run start

