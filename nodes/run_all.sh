#!/bin/bash
docker pull nethermind/nethermind:1.13.5
for d in */ ; do
    cd "$d" ; docker compose up -d ; cd -
done
