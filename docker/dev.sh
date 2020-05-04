#!/usr/bin/env bash

source .default.env && docker run -it --rm \
  --name blog-sullo-co-dev \
  -p 2368:2368 \
  -v $PWD/content:/var/lib/ghost/content \
  -e NODE_ENV=development \
  -e url=http://blog.francesco.sullo.co.localhost \
  -e VIRTUAL_HOST=blog.francesco.sullo.co.localhost \
  ghost
