FROM elasticsearch:5

ENV ES_JAVA_OPTS='-Des.path.conf=/etc/elasticsearch -e ES_JAVA_OPTS="-Xms1g -Xmx1g'


EXPOSE 9200

CMD ["-E", "network.host=0.0.0.0", "-E", "discovery.zen.minimum_master_nodes=1"]
