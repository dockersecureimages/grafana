# Grafana

Grafana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~179MB)

Security scanning using Clair
```
clair-scanner secureimages/grafana:7.1.0-alpine-3.12.0
2020/07/17 14:20:12 [INFO] ▶ Start clair-scanner
2020/07/17 14:20:15 [INFO] ▶ Server listening on port 9279
2020/07/17 14:20:15 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/07/17 14:20:15 [INFO] ▶ Analyzing 8ff81251033866acd3d9446c4af1dbaebc0c7e21c53873cb4dc045fa26178e67
2020/07/17 14:20:15 [INFO] ▶ Analyzing 1d979866ca27c8aea00b6054e653947ba91d6bc030fcf4a4ecbea5e9e2549f65
2020/07/17 14:20:16 [INFO] ▶ Analyzing 35141c090482db9fb2a27ec78c06b4a94ad98d9bbce8576bf0d6b72e74420735
2020/07/17 14:20:16 [INFO] ▶ Analyzing 567df1243a32fcf93914376a1da206d2e4e57fbf85854b0e9c068c6baa566701
2020/07/17 14:20:16 [INFO] ▶ Image [secureimages/grafana:7.1.0-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.2 --no-progress secureimages/grafana:7.1.0-alpine-3.12.0
2020-07-17T11:20:22.310Z        INFO    Need to update DB
2020-07-17T11:20:22.311Z        INFO    Downloading DB...
2020-07-17T11:20:31.322Z        INFO    Detecting Alpine vulnerabilities...

secureimages/grafana:7.1.0-alpine-3.12.0 (alpine 3.12.0)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~180MB)

[https://hub.docker.com/r/grafana/grafana](https://hub.docker.com/r/grafana/grafana)
```
docker pull grafana/grafana:7.1.0
```

Security scanning using Clair
```
clair-scanner grafana/grafana:7.1.0
2020/07/17 14:20:37 [INFO] ▶ Start clair-scanner
2020/07/17 14:20:40 [INFO] ▶ Server listening on port 9279
2020/07/17 14:20:40 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/07/17 14:20:40 [INFO] ▶ Analyzing a241bca5111e9d2af671db6770c95c54171020ed18a0d661e26aa13b270caa86
2020/07/17 14:20:40 [INFO] ▶ Analyzing f3dc5703fdbcce6964f5cedbbffcbc8101a7a2945b91d00cc98f72c246e8f878
2020/07/17 14:20:41 [INFO] ▶ Analyzing b884f4d0b87703ae5657b15ce2e9363f905cc5df22011ce8dfcd56bd092a1b26
2020/07/17 14:20:41 [INFO] ▶ Analyzing 2507a0e4e02be13d623cb268e085153abae2ee8af2d3c59489013dd6865fcf4c
2020/07/17 14:20:41 [INFO] ▶ Analyzing d83056747d18755853b4d58ebe39de259d04e4740d9090258577dd0a505d1622
2020/07/17 14:20:41 [INFO] ▶ Image [grafana/grafana:7.1.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.2 --no-progress grafana/grafana:7.1.0
2020-07-17T11:20:44.855Z        INFO    Need to update DB
2020-07-17T11:20:44.855Z        INFO    Downloading DB...
2020-07-17T11:20:53.656Z        INFO    Detecting Alpine vulnerabilities...

grafana/grafana:7.1.0 (alpine 3.12.0)
=====================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
