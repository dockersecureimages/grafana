# Grafana

Grafana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~180MB)

Security scanning using Clair
```
clair-scanner secureimages/grafana:7.2.2-alpine-3.12.0
2020/10/21 08:47:22 [INFO] ▶ Start clair-scanner
2020/10/21 08:47:24 [INFO] ▶ Server listening on port 9279
2020/10/21 08:47:24 [INFO] ▶ Analyzing 31609b718dd2bed92b93b1ab00c0ff67419a3121d0144bef0dc6ca49718820a7
2020/10/21 08:47:24 [INFO] ▶ Analyzing 74dfccd805e1818d31554680a42b0ca1cb411f523dbf81910cfce6854d74a276
2020/10/21 08:47:24 [INFO] ▶ Analyzing a2c30956258585ca75a87f2cc58d172fdf5454861161229c726e09cf50ec1ecd
2020/10/21 08:47:24 [INFO] ▶ Analyzing 35deda0a628ed4db25f652a5a83691b31b3800d79a2256b8e5c935a664b1250a
2020/10/21 08:47:24 [INFO] ▶ Analyzing d0c2dc27965820c34143acf06a5d4e333bfbfb3b31fcf610737c263689018925
2020/10/21 08:47:24 [INFO] ▶ Image [secureimages/grafana:7.2.2-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress secureimages/grafana:7.2.2-alpine-3.12.0
2020-10-21T08:47:31.020Z        INFO    Need to update DB
2020-10-21T08:47:31.021Z        INFO    Downloading DB...
2020-10-21T08:47:37.663Z        INFO    Detecting Alpine vulnerabilities...

secureimages/grafana:7.2.2-alpine-3.12.0 (alpine 3.12.0)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~180MB)

[https://hub.docker.com/r/grafana/grafana](https://hub.docker.com/r/grafana/grafana)
```
docker pull grafana/grafana:7.2.2
```

Security scanning using Clair
```
clair-scanner grafana/grafana:7.2.2
2020/10/21 08:47:42 [INFO] ▶ Start clair-scanner
2020/10/21 08:47:44 [INFO] ▶ Server listening on port 9279
2020/10/21 08:47:44 [INFO] ▶ Analyzing 31609b718dd2bed92b93b1ab00c0ff67419a3121d0144bef0dc6ca49718820a7
2020/10/21 08:47:44 [INFO] ▶ Analyzing 080eb3badd639ef3a719619b560bf405a313c97304b1af779c064e620d547ea0
2020/10/21 08:47:44 [INFO] ▶ Analyzing 7ddff9d9e0ba844bd9da957309cd9f2a2bba04e2e9f62ed14497728f06d8a4f0
2020/10/21 08:47:44 [INFO] ▶ Analyzing 12dee8835e8c1d939149105764da448e30094df328934e8906addc4963a3e314
2020/10/21 08:47:45 [INFO] ▶ Analyzing 7a5d35432f579c65cd0ef0962c9ff7479c27f5b5d217bd53c2df59f39c0b197c
2020/10/21 08:47:45 [INFO] ▶ Analyzing 2d742dff2e192411dd334772e9f81b5c30f6b2d03d10336dd9bad83e6dcd89c0
2020/10/21 08:47:45 [INFO] ▶ Image [grafana/grafana:7.2.2] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress grafana/grafana:7.2.2
2020-10-21T08:47:49.258Z        INFO    Need to update DB
2020-10-21T08:47:49.258Z        INFO    Downloading DB...
2020-10-21T08:47:57.436Z        INFO    Detecting Alpine vulnerabilities...

grafana/grafana:7.2.2 (alpine 3.12.0)
=====================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
