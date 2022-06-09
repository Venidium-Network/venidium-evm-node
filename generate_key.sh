#!/bin/bash

echo "Please wait..."
docker pull --quiet alpine:latest
docker run --rm -ti alpine /bin/sh -c "apk update -q && apk add openssl -q && echo \"generated key:\" && openssl rand -hex 32"