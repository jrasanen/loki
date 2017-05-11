#!/bin/bash
set -xe
docker-compose build
docker-compose push
kontena stack upgrade --deploy loki kontena.yml
