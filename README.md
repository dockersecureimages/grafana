# Grafana

Grafana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~179MB)

Security scanning using Clair
```
clair-scanner secureimages/grafana:7.1.1-alpine-3.12.0
2020/07/25 11:47:49 [INFO] ▶ Start clair-scanner
2020/07/25 11:47:51 [INFO] ▶ Server listening on port 9279
2020/07/25 11:47:51 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/07/25 11:47:51 [INFO] ▶ Analyzing 84d668bf3cf999471ef78137ae61ac6ab1b723dea0e5217c1d8c9dd6a04b4eb7
2020/07/25 11:47:51 [INFO] ▶ Analyzing 3980ba97f111021453d6adc60e7d4b2fb2aa115ea81a26d8d92573e92d30addc
2020/07/25 11:47:51 [INFO] ▶ Analyzing 2bc6abc7c70a7dc643481fb0933a53b093938f8bd4f6e68872fbe0e4ebff6a80
2020/07/25 11:47:51 [INFO] ▶ Analyzing 0122f97f81931117823b0a8f8b57d65f1718649f3b4b599f138211e96ae0d7b3
2020/07/25 11:47:51 [INFO] ▶ Image [secureimages/grafana:7.1.1-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.2 --no-progress secureimages/grafana:7.1.1-alpine-3.12.0
2020-07-25T08:47:56.941Z        INFO    Need to update DB
2020-07-25T08:47:56.941Z        INFO    Downloading DB...
2020-07-25T08:48:03.732Z        INFO    Detecting Alpine vulnerabilities...

secureimages/grafana:7.1.1-alpine-3.12.0 (alpine 3.12.0)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~180MB)

[https://hub.docker.com/r/grafana/grafana](https://hub.docker.com/r/grafana/grafana)
```
docker pull grafana/grafana:7.1.1
```

Security scanning using Clair
```
clair-scanner grafana/grafana:7.1.1
2020/07/25 11:48:09 [INFO] ▶ Start clair-scanner
2020/07/25 11:48:15 [INFO] ▶ Server listening on port 9279
2020/07/25 11:48:15 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/07/25 11:48:15 [INFO] ▶ Analyzing 4e2e5c2512f55cf650e4576fe1cdefba00be367867b9414c71d8b83d154f11d2
2020/07/25 11:48:15 [INFO] ▶ Analyzing ebbe2a50854283514e8fe8fb2db6b0794d65cee2e1046228f91fa505668ded3d
2020/07/25 11:48:16 [INFO] ▶ Analyzing 78ee5591ec1e59ce922d4f1e994438beeae3bf3b3a8178d3e2cf82738d31a626
2020/07/25 11:48:16 [INFO] ▶ Analyzing b79eadeb0c54070307813b073aad82652da395c6f0c450605c14bbd3bd3e5cea
2020/07/25 11:48:16 [INFO] ▶ Analyzing dd1b0c22ed5acdc7c2fe0777f13f1e4880933c8cee9ba4eb78a717c7e903b269
2020/07/25 11:48:16 [INFO] ▶ Image [grafana/grafana:7.1.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.2 --no-progress grafana/grafana:7.1.1
2020-07-25T08:48:18.040Z        INFO    Need to update DB
2020-07-25T08:48:18.040Z        INFO    Downloading DB...
2020-07-25T08:48:26.256Z        INFO    Detecting Alpine vulnerabilities...

grafana/grafana:7.1.1 (alpine 3.12.0)
=====================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
