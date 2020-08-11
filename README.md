# Grafana

Grafana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~179MB)

Security scanning using Clair
```
clair-scanner secureimages/grafana:7.1.3-alpine-3.12.0
2020/08/11 17:15:38 [INFO] ▶ Start clair-scanner
2020/08/11 17:15:40 [INFO] ▶ Server listening on port 9279
2020/08/11 17:15:40 [INFO] ▶ Analyzing 31609b718dd2bed92b93b1ab00c0ff67419a3121d0144bef0dc6ca49718820a7
2020/08/11 17:15:40 [INFO] ▶ Analyzing fc17924354f00843cd586338a88eaf33bd6e51125a89bd958e5d95eca12c5f68
2020/08/11 17:15:40 [INFO] ▶ Analyzing e94d3018e6e52370650a0e6c035d6a44851a0b0ae06d6068ac87c5d51253cafc
2020/08/11 17:15:41 [INFO] ▶ Analyzing a8f4d671c13d504e66e58209e256fdc96ed15f39823281679cf274e9afcd34d9
2020/08/11 17:15:41 [INFO] ▶ Analyzing 9a77d0ad86e7f8b2e5b086eeef58f88f6f1a9ed11396a9e2597294ca0836f6b6
2020/08/11 17:15:41 [INFO] ▶ Image [secureimages/grafana:7.1.3-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.10.2 --no-progress secureimages/grafana:7.1.3-alpine-3.12.0
2020-08-11T17:15:44.846Z        INFO    Need to update DB
2020-08-11T17:15:44.846Z        INFO    Downloading DB...
2020-08-11T17:15:51.739Z        INFO    Detecting Alpine vulnerabilities...

secureimages/grafana:7.1.3-alpine-3.12.0 (alpine 3.12.0)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~180MB)

[https://hub.docker.com/r/grafana/grafana](https://hub.docker.com/r/grafana/grafana)
```
docker pull grafana/grafana:7.1.3
```

Security scanning using Clair
```
clair-scanner grafana/grafana:7.1.3
2020/08/11 17:15:56 [INFO] ▶ Start clair-scanner
2020/08/11 17:15:58 [INFO] ▶ Server listening on port 9279
2020/08/11 17:15:58 [INFO] ▶ Analyzing 31609b718dd2bed92b93b1ab00c0ff67419a3121d0144bef0dc6ca49718820a7
2020/08/11 17:15:58 [INFO] ▶ Analyzing 640d3933b51ce55ff3a165e9d92d881345ed13b5fb54ffbf4f0a942725c03429
2020/08/11 17:15:58 [INFO] ▶ Analyzing a051f540896871967b3057c196cce8024916b8980d3db89b024625481e16c5c9
2020/08/11 17:15:58 [INFO] ▶ Analyzing 8220739e194fad9b44c5b07cd6ed77e394bf416b58490c551ec78be3b8037e5c
2020/08/11 17:15:59 [INFO] ▶ Analyzing c062ce570ba9e5eff54564e87fbe3717b1766fc626da724b8beea9323d19a3a2
2020/08/11 17:15:59 [INFO] ▶ Analyzing b9083529316a18b7cccb564e6326f415971fec165333b9f846eeb12bd2dc4c41
2020/08/11 17:15:59 [INFO] ▶ Image [grafana/grafana:7.1.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.10.2 --no-progress grafana/grafana:7.1.3
2020-08-11T17:16:05.870Z        INFO    Need to update DB
2020-08-11T17:16:05.871Z        INFO    Downloading DB...
2020-08-11T17:16:13.561Z        INFO    Detecting Alpine vulnerabilities...

grafana/grafana:7.1.3 (alpine 3.12.0)
=====================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
