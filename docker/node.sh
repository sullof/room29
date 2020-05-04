#!/usr/bin/env bash

docker stop blog-sullo-co
docker rm blog-sullo-co

source .default.env && docker run -d \
  --name blog-sullo-co \
  -p 2368:2368 \
  -e url=https://blog.francesco.sullo.co \
  --restart unless-stopped \
  -v /vol/log/blog-sullo-co_app:/var/log/blog-sullo-co_app \
  -e NODE_ENV=production \
  -e VIRTUAL_HOST=blog.francesco.sullo.co \
  -e LETSENCRYPT_HOST=blog.francesco.sullo.co \
  -e LETSENCRYPT_EMAIL=admin@sullo.co \
  ghost

