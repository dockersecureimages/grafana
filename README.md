# Grafana

Grafana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/grafana:6.7.0-alpine-3.11.3
2020/03/19 19:05:54 [INFO] ▶ Start clair-scanner
2020/03/19 19:05:57 [INFO] ▶ Server listening on port 9279
2020/03/19 19:05:57 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/03/19 19:05:57 [INFO] ▶ Analyzing 12c969e667a3867f3244dbf3c5a46cee768e8ca0677e1cb665e5fa6b2aa42df4
2020/03/19 19:05:57 [INFO] ▶ Analyzing 31ad321cd500f7e5e81eba49da1591979631e0414cf6304391125e7bf653bfb2
2020/03/19 19:05:57 [INFO] ▶ Analyzing 817691a17ecc54fd3caed2c8a236d7a1d0dc0fed09965dbf3f2f38b2b7f28b65
2020/03/19 19:05:57 [INFO] ▶ Analyzing a924ae7d7536d445161a1e351d9ec4593b5bd60e0fd4b3decb125764ae450c2b
2020/03/19 19:05:58 [INFO] ▶ Image [secureimages/grafana:6.7.0-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.2 --no-progress secureimages/grafana:6.7.0-alpine-3.11.3
2020-03-19T17:06:05.234Z        INFO    Need to update DB
2020-03-19T17:06:05.234Z        INFO    Downloading DB...
2020-03-19T17:06:09.409Z        INFO    Reopening DB...
2020-03-19T17:06:14.149Z        INFO    Detecting Alpine vulnerabilities...

secureimages/grafana:6.7.0-alpine-3.11.3 (alpine 3.11.3)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/grafana/grafana](https://hub.docker.com/r/grafana/grafana)
```
docker pull grafana/grafana:6.7.0
```

Security scanning using Clair
```
clair-scanner grafana/grafana:6.7.0
2020/03/19 19:06:20 [INFO] ▶ Start clair-scanner
2020/03/19 19:06:24 [INFO] ▶ Server listening on port 9279
2020/03/19 19:06:24 [INFO] ▶ Analyzing 9b18a7418f4cfa9967437868cacf628a9d4c9791bff790888f5a33ef7830c46a
2020/03/19 19:06:24 [INFO] ▶ Analyzing e4c3fc817a5309171664649f58de1abe880f2d2bf53a33aa474b25e9fc486a4b
2020/03/19 19:06:24 [INFO] ▶ Analyzing 5859a6a300fa43f0503b4499e895a42a0b3f28d1d24ef8780a11733535f44f07
2020/03/19 19:06:24 [INFO] ▶ Analyzing a62fd02ff3c7349bd6882cbd245114748b7fdd8a22788581b7580a6d5a9d7adf
2020/03/19 19:06:24 [INFO] ▶ Analyzing d9310e99ce53130b644802ba2ce30f501e9cea88441596594de7e5e524b3ef4d
2020/03/19 19:06:24 [INFO] ▶ Analyzing 379abce1e104274b5906b865c83b61e793f65dea3f6340bf26aefedbde6492e4
2020/03/19 19:06:24 [INFO] ▶ Analyzing 673ad6443e0170cba2e2d13e98e5742c0cb09248f5159ab509a974d7d5e9ff62
2020/03/19 19:06:24 [INFO] ▶ Analyzing 662f250ab0ca9a9d6b44ffe8491f300537df7c388bfcde302cc76a82fd6b02a6
2020/03/19 19:06:24 [INFO] ▶ Image [grafana/grafana:6.7.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.2 --no-progress grafana/grafana:6.7.0
2020-03-19T17:06:29.430Z        INFO    Need to update DB
2020-03-19T17:06:29.430Z        INFO    Downloading DB...
2020-03-19T17:06:33.442Z        INFO    Reopening DB...
2020-03-19T17:06:38.878Z        INFO    Detecting Alpine vulnerabilities...

grafana/grafana:6.7.0 (alpine 3.10.4)
=====================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
