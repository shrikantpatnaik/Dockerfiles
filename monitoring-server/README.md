# Monitoring server

This will install [Prometheus](https://prometheus.io/), [AlertManager](https://github.com/prometheus/alertmanager), [PromTwilio](https://github.com/Swatto/promtotwilio), [Blackbox Exporter](https://github.com/prometheus/blackbox_exporter) and [Grafana](https://grafana.com/) and link them all together.

## Setup

AlertManager and Prometheus are not secure so I would recommend securing them using Basic Auth capabilites of [nginx-proxy](https://github.com/jwilder/nginx-proxy)

You can do so by creating an htpasswd file in `NGINX_FILES_PATH/htpasswd` with the same name as `PROMETHEUS_URL` and one more with the name `ALERTMANAGER_URL`
