FROM alpine:3.11.3
LABEL website="Secure Docker Images https://secureimages.dev"
LABEL description="We secure your business from scratch."
LABEL maintainer="hireus@secureimages.dev"

ARG GRAFANA_VERSION=6.6.1

ENV PATH=/usr/share/grafana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin \
    GF_PATHS_CONFIG="/etc/grafana/grafana.ini" \
    GF_PATHS_DATA="/var/lib/grafana" \
    GF_PATHS_HOME="/usr/share/grafana" \
    GF_PATHS_LOGS="/var/log/grafana" \
    GF_PATHS_PLUGINS="/var/lib/grafana/plugins" \
    GF_PATHS_PROVISIONING="/etc/grafana/provisioning"

WORKDIR $GF_PATHS_HOME

RUN mkdir -p "$GF_PATHS_HOME/.aws" \
        "$GF_PATHS_PROVISIONING/datasources" \
        "$GF_PATHS_PROVISIONING/dashboards" \
        "$GF_PATHS_PROVISIONING/notifiers" \
        "$GF_PATHS_LOGS" \
        "$GF_PATHS_PLUGINS" \
        "$GF_PATHS_DATA" ;\
    wget -P /tmp/ https://dl.grafana.com/oss/release/grafana-${GRAFANA_VERSION}.linux-amd64.tar.gz ;\
    tar xfz /tmp/grafana-${GRAFANA_VERSION}.linux-amd64.tar.gz --strip-components=1 -C ${GF_PATHS_HOME} ;\
    set -ex ;\
    addgroup -S grafana ;\
    adduser -S -G grafana grafana ;\
    apk add --no-cache libc6-compat ca-certificates bash ;\
    rm -rf /var/cache/apk/* /tmp/*

ADD data/ /

RUN chown -R root:root /etc/grafana ;\
    chmod -R a+r /etc/grafana ;\
    chown -R grafana:grafana "$GF_PATHS_DATA" "$GF_PATHS_HOME/.aws" "$GF_PATHS_LOGS" "$GF_PATHS_PLUGINS" "$GF_PATHS_PROVISIONING" /run.sh ;\
    chmod -R 777 "$GF_PATHS_DATA" "$GF_PATHS_HOME/.aws" "$GF_PATHS_LOGS" "$GF_PATHS_PLUGINS" "$GF_PATHS_PROVISIONING" /run.sh

USER grafana

EXPOSE 3000

CMD ["/run.sh"]
