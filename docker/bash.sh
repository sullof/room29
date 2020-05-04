#!/usr/bin/env bash

host=room-29

if [[ $1 != '' ]]; then
  host=$1
fi

docker exec -it $host bash
