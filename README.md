# Grafana

Grafana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/grafana:6.6.1-alpine-3.11.3
2020/02/06 15:43:13 [INFO] ▶ Start clair-scanner
2020/02/06 15:43:15 [INFO] ▶ Server listening on port 9279
2020/02/06 15:43:15 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/02/06 15:43:16 [INFO] ▶ Analyzing f4a46eb0e420e67800aa251d5006a1c1ab1e2313e019fc156c0908dac3a8eb7b
2020/02/06 15:43:16 [INFO] ▶ Analyzing 765601a26b370254b58a968407150eefd0b0a7a40be1dc415f7254706026ec85
2020/02/06 15:43:16 [INFO] ▶ Analyzing 3d2c77b091e79065562097e911315e9eb87017577ea6beabb3bc483aea7bf210
2020/02/06 15:43:16 [INFO] ▶ Analyzing 1f8310bceb6fa0ccb92e6e330382d1ed6f97508f8332d9824f11c14efb85becb
2020/02/06 15:43:17 [INFO] ▶ Image [secureimages/grafana:6.6.1-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress secureimages/grafana:6.6.1-alpine-3.11.3
2020-02-06T13:43:22.854Z        INFO    Need to update DB
2020-02-06T13:43:22.854Z        INFO    Downloading DB...
2020-02-06T13:43:28.650Z        INFO    Reopening DB...
2020-02-06T13:43:31.658Z        INFO    Detecting Alpine vulnerabilities...

secureimages/grafana:6.6.1-alpine-3.11.3 (alpine 3.11.3)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/grafana/grafana](https://hub.docker.com/r/grafana/grafana)
```
docker pull grafana/grafana:6.6.1
```

Security scanning using Clair
```
clair-scanner grafana/grafana:6.6.1
2020/02/06 15:43:37 [INFO] ▶ Start clair-scanner
2020/02/06 15:43:41 [INFO] ▶ Server listening on port 9279
2020/02/06 15:43:41 [INFO] ▶ Analyzing 9b18a7418f4cfa9967437868cacf628a9d4c9791bff790888f5a33ef7830c46a
2020/02/06 15:43:41 [INFO] ▶ Analyzing abd1470d2cb1205218b82d73d1061dd50eda61aac0466eee00a1513a20ca0186
2020/02/06 15:43:41 [INFO] ▶ Analyzing 847bde6e4ab12771f73a66a6850b6db96cd46572f4268211bd6bc316c76fb86a
2020/02/06 15:43:42 [INFO] ▶ Analyzing 507113f30f7b21647843edba1d2f10fe4f52f8d22348403f51e446144efaad3e
2020/02/06 15:43:42 [INFO] ▶ Analyzing 05180389057dd1db0eb3344f166a09c8eaf17b75be45f2b367ef316c00060f14
2020/02/06 15:43:42 [INFO] ▶ Analyzing 5c364e44bd91d92967fedb636360c9f7302b4a66e711609a6164180192056727
2020/02/06 15:43:42 [INFO] ▶ Analyzing 2793d9c4d7d678ad04cc061c292317a3b7bae21570194f2529580c4e76dc4ba9
2020/02/06 15:43:42 [INFO] ▶ Analyzing 85b31e6e48d7330823d8002783be3e55002b7c3cc1c333853c927fdcf80b7854
2020/02/06 15:43:42 [INFO] ▶ Image [grafana/grafana:6.6.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress grafana/grafana:6.6.1
2020-02-06T13:43:46.788Z        INFO    Need to update DB
2020-02-06T13:43:46.788Z        INFO    Downloading DB...
2020-02-06T13:43:50.854Z        INFO    Reopening DB...
2020-02-06T13:43:55.118Z        INFO    Detecting Alpine vulnerabilities...

grafana/grafana:6.6.1 (alpine 3.10.4)
=====================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
