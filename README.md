# Grafana

Grafana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/grafana:6.7.1-alpine-3.11.3
2020/03/20 22:16:14 [INFO] ▶ Start clair-scanner
2020/03/20 22:16:17 [INFO] ▶ Server listening on port 9279
2020/03/20 22:16:17 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/03/20 22:16:17 [INFO] ▶ Analyzing 92f97d0a5d5623161709966973081f30350369419d8246c08550539e09b209ea
2020/03/20 22:16:17 [INFO] ▶ Analyzing f02a12f38411d41555cd406a8008f40bcd1a01282398f2808b1cf0c4aadc6782
2020/03/20 22:16:17 [INFO] ▶ Analyzing 965d23afc96df7cbbeb7145e97b80724450d982852c03ea45e2a5294da297926
2020/03/20 22:16:17 [INFO] ▶ Analyzing f5250c512cc06b6315b4e1eea07fd2d2577dbcc2c727ffeb20cddd81b73c6398
2020/03/20 22:16:18 [INFO] ▶ Image [secureimages/grafana:6.7.1-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.2 --no-progress secureimages/grafana:6.7.1-alpine-3.11.3
2020-03-20T20:16:23.985Z        INFO    Need to update DB
2020-03-20T20:16:23.985Z        INFO    Downloading DB...
2020-03-20T20:16:28.152Z        INFO    Reopening DB...
2020-03-20T20:16:32.388Z        INFO    Detecting Alpine vulnerabilities...

secureimages/grafana:6.7.1-alpine-3.11.3 (alpine 3.11.3)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/grafana/grafana](https://hub.docker.com/r/grafana/grafana)
```
docker pull grafana/grafana:6.7.1
```

Security scanning using Clair
```
clair-scanner grafana/grafana:6.7.1
2020/03/20 22:16:37 [INFO] ▶ Start clair-scanner
2020/03/20 22:16:40 [INFO] ▶ Server listening on port 9279
2020/03/20 22:16:40 [INFO] ▶ Analyzing 9b18a7418f4cfa9967437868cacf628a9d4c9791bff790888f5a33ef7830c46a
2020/03/20 22:16:40 [INFO] ▶ Analyzing 7a44e8a3c19e70d5bf22b8aac6e5834cbe2b03e34764eb4bb5ceff4995d5510d
2020/03/20 22:16:40 [INFO] ▶ Analyzing fe4f188f5dafc04ed7fc07a4a59c0f48378e8b69a231540029027a49a4358245
2020/03/20 22:16:40 [INFO] ▶ Analyzing b3b400a7ce8022503e44224882fc28eb938c8e2006d3b0b7d0086efee31c64da
2020/03/20 22:16:40 [INFO] ▶ Analyzing ccf9a26c45f3fc2300acb321b0c510ab8004e77e9c05f8b39a73dcf73642c549
2020/03/20 22:16:40 [INFO] ▶ Analyzing fbd39b00c646ac5f66ee2b7baad8f5033410160ff4de80b2dab0d3efb1cd5d7e
2020/03/20 22:16:41 [INFO] ▶ Analyzing 3fa4a6d2f0a3e74c1843017a4f94d12ed26eef3a21f4fc5c8022aa8e848bc59c
2020/03/20 22:16:41 [INFO] ▶ Analyzing 1ddc99cd36eb7ca802a0d488f054e80124973b2416038b159e5be6559fbc02b0
2020/03/20 22:16:41 [INFO] ▶ Image [grafana/grafana:6.7.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.2 --no-progress grafana/grafana:6.7.1
2020-03-20T20:16:46.356Z        INFO    Need to update DB
2020-03-20T20:16:46.357Z        INFO    Downloading DB...
2020-03-20T20:16:51.165Z        INFO    Reopening DB...
2020-03-20T20:16:56.772Z        INFO    Detecting Alpine vulnerabilities...

grafana/grafana:6.7.1 (alpine 3.10.4)
=====================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
