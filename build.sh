#!/bin/bash

cd elasticsearch/
docker build -t image-registry.leonidasoy.fi/loki-elasticsearch:latest .
docker push image-registry.leonidasoy.fi/loki-elasticsearch:latest
cd ..

cd fluentd/
docker build -t image-registry.leonidasoy.fi/loki-fluentd:latest .
docker push image-registry.leonidasoy.fi/loki-fluentd:latest
cd ..

cd kibana/
docker build -t image-registry.leonidasoy.fi/loki-kibana:latest .
docker push image-registry.leonidasoy.fi/loki-kibana:latest
cd ..
