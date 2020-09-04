# Grafana

Grafana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~179MB)

Security scanning using Clair
```
clair-scanner secureimages/grafana:7.1.5-alpine-3.12.0
2020/09/04 15:26:13 [INFO] ▶ Start clair-scanner
2020/09/04 15:26:15 [INFO] ▶ Server listening on port 9279
2020/09/04 15:26:15 [INFO] ▶ Analyzing 31609b718dd2bed92b93b1ab00c0ff67419a3121d0144bef0dc6ca49718820a7
2020/09/04 15:26:15 [INFO] ▶ Analyzing 78f08a1db8ff01b09a248643b18284a32cbcc0de26bc2af8f3f7bfe969e9313d
2020/09/04 15:26:15 [INFO] ▶ Analyzing 0c82315595bccd83f148e386b09753ab7c36d1cb513e416871b0df285e41731a
2020/09/04 15:26:15 [INFO] ▶ Analyzing a9c64ddb5a1d6587501d835a41f20195743f34a3ad2a0224ad7b01f529fbd01b
2020/09/04 15:26:15 [INFO] ▶ Analyzing d6d352569e5ad220108eb9018025b3fe8a686dc87408a6ba83fdfcd4d20a71c1
2020/09/04 15:26:15 [INFO] ▶ Image [secureimages/grafana:7.1.5-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.11.0 --no-progress secureimages/grafana:7.1.5-alpine-3.12.0
2020-09-04T15:26:20.100Z        INFO    Need to update DB
2020-09-04T15:26:20.100Z        INFO    Downloading DB...
2020-09-04T15:26:26.271Z        INFO    Detecting Alpine vulnerabilities...

secureimages/grafana:7.1.5-alpine-3.12.0 (alpine 3.12.0)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~180MB)

[https://hub.docker.com/r/grafana/grafana](https://hub.docker.com/r/grafana/grafana)
```
docker pull grafana/grafana:7.1.5
```

Security scanning using Clair
```
clair-scanner grafana/grafana:7.1.5
2020/09/04 15:26:31 [INFO] ▶ Start clair-scanner
2020/09/04 15:26:33 [INFO] ▶ Server listening on port 9279
2020/09/04 15:26:33 [INFO] ▶ Analyzing 31609b718dd2bed92b93b1ab00c0ff67419a3121d0144bef0dc6ca49718820a7
2020/09/04 15:26:33 [INFO] ▶ Analyzing f5bf1555faaa807cba2f1615c4787f4990d3b13d4d2b4b7c216d4276896fd183
2020/09/04 15:26:33 [INFO] ▶ Analyzing ecac163c53c8b2793cac2b3bad1eabcd117bc564ccb1d66f637f00da7d7c51d6
2020/09/04 15:26:33 [INFO] ▶ Analyzing ffa366c64aaf51e75b32085e78cb8771ff30d03af9c504ba8d25bb110fd98825
2020/09/04 15:26:33 [INFO] ▶ Analyzing e2918beab349177b2410cf18c111a4c9a6fdacedd147f25e4f1d7e2516f37bf0
2020/09/04 15:26:33 [INFO] ▶ Analyzing 956355a11c549ebf76e6be095681a6ed3389c99babf95653c9614c79d6641f0b
2020/09/04 15:26:33 [INFO] ▶ Image [grafana/grafana:7.1.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.11.0 --no-progress grafana/grafana:7.1.5
2020-09-04T15:26:38.866Z        INFO    Need to update DB
2020-09-04T15:26:38.866Z        INFO    Downloading DB...
2020-09-04T15:26:45.779Z        INFO    Detecting Alpine vulnerabilities...

grafana/grafana:7.1.5 (alpine 3.12.0)
=====================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
