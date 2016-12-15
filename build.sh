#!/bin/bash

cd elasticsearch/
docker build -t image-registry.leonidasoy.fi/loki-elasticsearch:v3 .
docker push image-registry.leonidasoy.fi/loki-elasticsearch:v3
cd ..

cd fluentd/
docker build -t image-registry.leonidasoy.fi/loki-fluentd:v3 .
docker push image-registry.leonidasoy.fi/loki-fluentd:v3
cd ..

cd kibana/
docker build -t image-registry.leonidasoy.fi/loki-kibana:v3 .
docker push image-registry.leonidasoy.fi/loki-kibana:v3
cd ..
