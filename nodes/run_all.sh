#!/bin/bash
docker pull nethermind/nethermind:latest
for d in */ ; do
    cd "$d" ; docker compose up -d ; cd -
done
