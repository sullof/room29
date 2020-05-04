#!/usr/bin/env bash

host=blog-sullo-co

if [[ $1 != '' ]]; then
  host=$1
fi

docker exec -it $host bash
