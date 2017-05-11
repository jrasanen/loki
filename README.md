# Loki

Contains Fluentd, Elasticsearch and Kibana.

## System requirements
* Docker

## Building
To build containers
* `docker-compose build`

## Running
* `docker-compose up`

## Testing / Local development
If you need to use fluent-cat locally:
* `fluentd -v '~> 0.12.0'`

## Deploy

### First time

    docker-compose build
    docker-compose push
    kontena stack install --deploy kontena.yml

### Subsequent deploys

    ./deploy.sh
