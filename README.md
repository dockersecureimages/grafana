# Grafana

Grafana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/grafana:6.6.0-alpine-3.11.3
2020/01/30 13:41:52 [INFO] ▶ Start clair-scanner
2020/01/30 13:41:55 [INFO] ▶ Server listening on port 9279
2020/01/30 13:41:55 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/01/30 13:41:55 [INFO] ▶ Analyzing fbc5e0c0327819900b42ca62517f90dca30657b9180fe2aff8a56a7ce1eaaec1
2020/01/30 13:41:55 [INFO] ▶ Analyzing 30cba5de1626651143f1bf2ecde53c9581993a2d643b96ac1a0c4404cb5ef360
2020/01/30 13:41:55 [INFO] ▶ Analyzing 9390b587ae543967fc5ab82b8acb80807e2e60ced5061b811ce158b973df3220
2020/01/30 13:41:55 [INFO] ▶ Analyzing 7a88e347a8882d26fbca6fbf16f96eb3b7d0eab94dc39a3b002aa0ce749b3b80
2020/01/30 13:41:55 [INFO] ▶ Image [secureimages/grafana:6.6.0-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress secureimages/grafana:6.6.0-alpine-3.11.3
2020-01-30T11:42:00.659Z        INFO    Need to update DB
2020-01-30T11:42:00.660Z        INFO    Downloading DB...
2020-01-30T11:42:04.756Z        INFO    Reopening DB...
2020-01-30T11:42:07.980Z        INFO    Detecting Alpine vulnerabilities...

secureimages/grafana:6.6.0-alpine-3.11.3 (alpine 3.11.3)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/grafana/grafana](https://hub.docker.com/r/grafana/grafana)
```
docker pull grafana/grafana:6.6.0
```

Security scanning using Clair
```
clair-scanner grafana/grafana:6.6.0
2020/01/30 13:42:13 [INFO] ▶ Start clair-scanner
2020/01/30 13:42:17 [INFO] ▶ Server listening on port 9279
2020/01/30 13:42:17 [INFO] ▶ Analyzing 9b18a7418f4cfa9967437868cacf628a9d4c9791bff790888f5a33ef7830c46a
2020/01/30 13:42:17 [INFO] ▶ Analyzing c2dde3ac16d6aa2deeeb7493c69733897ce8b790f2696f847afdca3e3ef099fd
2020/01/30 13:42:17 [INFO] ▶ Analyzing 06943bfb62328c42b7530d1ddfcae7c3540afc980265f79e9b1b8e6caf38e33a
2020/01/30 13:42:17 [INFO] ▶ Analyzing 3d3ea43cb7a28f36fad79edc34bb895989b15b9b6a4df75491a2a3f92878e1a2
2020/01/30 13:42:17 [INFO] ▶ Analyzing 56f3ce80388b4e974e0753380b5536966c9ae5380b8467f1c5c33baa4ab23bcc
2020/01/30 13:42:17 [INFO] ▶ Analyzing cae56a864be76baa9a4884bf4cb1cfe997d7cefb881ce688ebfbf19c879cb164
2020/01/30 13:42:17 [INFO] ▶ Analyzing c60b030be51c54f668326dfa4b8e1fddab924894cd2e5cb707085d6838a04830
2020/01/30 13:42:17 [INFO] ▶ Analyzing a7123897a142700b03a61e38b06004dda5cc3d18e66c98f050055826ca7ccdb4
2020/01/30 13:42:17 [INFO] ▶ Image [grafana/grafana:6.6.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress grafana/grafana:6.6.0
2020-01-30T11:42:22.894Z        INFO    Need to update DB
2020-01-30T11:42:22.894Z        INFO    Downloading DB...
2020-01-30T11:42:26.911Z        INFO    Reopening DB...
2020-01-30T11:42:31.166Z        INFO    Detecting Alpine vulnerabilities...

grafana/grafana:6.6.0 (alpine 3.10.4)
=====================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
