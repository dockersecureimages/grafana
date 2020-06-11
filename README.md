# Grafana

Grafana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~157MB)

Security scanning using Clair
```
clair-scanner secureimages/grafana:7.0.3-alpine-3.12.0
2020/06/11 13:20:46 [INFO] ▶ Start clair-scanner
2020/06/11 13:20:47 [INFO] ▶ Server listening on port 9279
2020/06/11 13:20:47 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/06/11 13:20:47 [INFO] ▶ Analyzing 0b5eb2e9c09c2fcff0397dc888aa03855f3973b4cb6d23d8cdef92132996cf47
2020/06/11 13:20:47 [INFO] ▶ Analyzing 8f3e784d30e9238a40b509841f769212aa58000ec469901970c029ec0a259a57
2020/06/11 13:20:47 [INFO] ▶ Analyzing 62da8dba9097f4e0b2af1bcf6702dd57498a616a547ec9c018775faa14118ab4
2020/06/11 13:20:47 [INFO] ▶ Analyzing 694b910e0bd52d726b87ab4f44e03ad19d79c1498efc707ab76aaa0233fa7fde
2020/06/11 13:20:47 [INFO] ▶ Image [secureimages/grafana:7.0.3-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/grafana:7.0.3-alpine-3.12.0
2020-06-11T10:20:52.058Z        INFO    Need to update DB
2020-06-11T10:20:52.058Z        INFO    Downloading DB...
2020-06-11T10:20:57.552Z        INFO    Detecting Alpine vulnerabilities...

secureimages/grafana:7.0.3-alpine-3.12.0 (alpine 3.12.0)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~158MB)

[https://hub.docker.com/r/grafana/grafana](https://hub.docker.com/r/grafana/grafana)
```
docker pull grafana/grafana:7.0.3
```

Security scanning using Clair
```
clair-scanner grafana/grafana:7.0.3
2020/06/11 13:21:02 [INFO] ▶ Start clair-scanner
2020/06/11 13:21:05 [INFO] ▶ Server listening on port 9279
2020/06/11 13:21:05 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/06/11 13:21:05 [INFO] ▶ Analyzing bbcf3c07d05641ca441daba28513860673064fe229be9952a50c8c42c49f47a9
2020/06/11 13:21:05 [INFO] ▶ Analyzing 81d7449413f6b6e3bc67291bdba84d55a7487354b13c8c5ef8e766e4ed952d23
2020/06/11 13:21:05 [INFO] ▶ Analyzing dfba43a895a77acbc6c595d0c5081f61726c19f9408d46fa750afcbc16677c8c
2020/06/11 13:21:05 [INFO] ▶ Analyzing 04a2b6634253f18a90609f06b248e8398d25d3a44a851967b582316659e6445c
2020/06/11 13:21:05 [INFO] ▶ Analyzing f49e8bd8ce6db4234a4bcd639a4adc4ddf53c0c18493bfdc3f22c99eafd09fb5
2020/06/11 13:21:05 [INFO] ▶ Image [grafana/grafana:7.0.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress grafana/grafana:7.0.3
2020-06-11T10:21:09.487Z        INFO    Need to update DB
2020-06-11T10:21:09.487Z        INFO    Downloading DB...
2020-06-11T10:21:17.463Z        INFO    Detecting Alpine vulnerabilities...

grafana/grafana:7.0.3 (alpine 3.11.6)
=====================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
