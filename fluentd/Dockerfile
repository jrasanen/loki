FROM fluent/fluentd:v0.12-latest
MAINTAINER Jussi Räsänen <jussi.rasanen@leonidasoy.fi>
WORKDIR /home/fluent
ENV PATH /home/fluent/.gem/ruby/2.3.0/bin:$PATH

USER root
RUN apk --no-cache --update add sudo build-base ruby-dev libgcrypt-dev libxml2-dev libxslt-dev && \
    sudo -u fluent gem install nokogiri --no-document -- --use-system-libraries && \
    sudo -u fluent gem install fluent-plugin-secure-forward && \
    sudo -u fluent fluent-gem install fluent-plugin-elasticsearch && \
    sudo -u fluent fluent-gem install fluent-plugin-record-reformer && \
    rm -rf /home/fluent/.gem/ruby/2.3.0/cache/*.gem && sudo -u fluent gem sources -c && \
    apk del sudo build-base ruby-dev && rm -rf /var/cache/apk/*

EXPOSE 9292 24224 24230 24284

USER fluent
CMD exec fluentd -c /fluentd/etc/$FLUENTD_CONF -p /fluentd/plugins $FLUENTD_OPT
