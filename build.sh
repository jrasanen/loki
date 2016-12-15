#!/bin/bash

cd elasticsearch/
docker build -t image-registry.leonidasoy.fi/loki-elasticsearch:v4 .
docker push image-registry.leonidasoy.fi/loki-elasticsearch:v4
cd ..

cd fluentd/
docker build -t image-registry.leonidasoy.fi/loki-fluentd:v4 .
docker push image-registry.leonidasoy.fi/loki-fluentd:v4
cd ..

cd kibana/
docker build -t image-registry.leonidasoy.fi/loki-kibana:v4 .
docker push image-registry.leonidasoy.fi/loki-kibana:v4
cd ..
