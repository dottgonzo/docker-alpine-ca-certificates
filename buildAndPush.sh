#!/bin/sh

docker build -t dottgonzo/docker-alpine-ca-certificates:$(date '+%Y-%m') . && docker push dottgonzo/docker-alpine-ca-certificates:$(date '+%Y-%m')
