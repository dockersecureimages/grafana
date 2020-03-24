# Grafana

Grafana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/grafana:6.7.1-alpine-3.11.5
2020/03/24 17:21:50 [INFO] ▶ Start clair-scanner
2020/03/24 17:21:52 [INFO] ▶ Server listening on port 9279
2020/03/24 17:21:52 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/03/24 17:21:52 [INFO] ▶ Analyzing b4915a6fda8bcb0cbe80e139e5383ac114e482a92bea37a0ad2e5eb1c42c6ac4
2020/03/24 17:21:52 [INFO] ▶ Analyzing a3dfc969d94c0bc8c99537c7645f3692c4bb01e06b96c3ebb7c28c72c6e630af
2020/03/24 17:21:52 [INFO] ▶ Analyzing 3849d35665683d2a41efc01c8de439ffc06f70390d789468e019a254e8a155fc
2020/03/24 17:21:52 [INFO] ▶ Analyzing 48640a5f5526318ed9d2877860c91d045c6e93b5e5d4ecb92c696101a7686c01
2020/03/24 17:21:52 [INFO] ▶ Image [secureimages/grafana:6.7.1-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress secureimages/grafana:6.7.1-alpine-3.11.5
2020-03-24T15:21:58.041Z        INFO    Need to update DB
2020-03-24T15:21:58.041Z        INFO    Downloading DB...
2020-03-24T15:22:09.271Z        INFO    Reopening DB...
2020-03-24T15:22:12.881Z        INFO    Detecting Alpine vulnerabilities...

secureimages/grafana:6.7.1-alpine-3.11.5 (alpine 3.11.5)
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
2020/03/24 17:22:17 [INFO] ▶ Start clair-scanner
2020/03/24 17:22:21 [INFO] ▶ Server listening on port 9279
2020/03/24 17:22:21 [INFO] ▶ Analyzing 9b18a7418f4cfa9967437868cacf628a9d4c9791bff790888f5a33ef7830c46a
2020/03/24 17:22:21 [INFO] ▶ Analyzing 7a44e8a3c19e70d5bf22b8aac6e5834cbe2b03e34764eb4bb5ceff4995d5510d
2020/03/24 17:22:21 [INFO] ▶ Analyzing fe4f188f5dafc04ed7fc07a4a59c0f48378e8b69a231540029027a49a4358245
2020/03/24 17:22:21 [INFO] ▶ Analyzing b3b400a7ce8022503e44224882fc28eb938c8e2006d3b0b7d0086efee31c64da
2020/03/24 17:22:21 [INFO] ▶ Analyzing ccf9a26c45f3fc2300acb321b0c510ab8004e77e9c05f8b39a73dcf73642c549
2020/03/24 17:22:21 [INFO] ▶ Analyzing fbd39b00c646ac5f66ee2b7baad8f5033410160ff4de80b2dab0d3efb1cd5d7e
2020/03/24 17:22:21 [INFO] ▶ Analyzing 3fa4a6d2f0a3e74c1843017a4f94d12ed26eef3a21f4fc5c8022aa8e848bc59c
2020/03/24 17:22:21 [INFO] ▶ Analyzing 1ddc99cd36eb7ca802a0d488f054e80124973b2416038b159e5be6559fbc02b0
2020/03/24 17:22:21 [INFO] ▶ Image [grafana/grafana:6.7.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress grafana/grafana:6.7.1
2020-03-24T15:22:26.180Z        INFO    Need to update DB
2020-03-24T15:22:26.180Z        INFO    Downloading DB...
2020-03-24T15:22:29.970Z        INFO    Reopening DB...
2020-03-24T15:22:34.964Z        INFO    Detecting Alpine vulnerabilities...

grafana/grafana:6.7.1 (alpine 3.10.4)
=====================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
