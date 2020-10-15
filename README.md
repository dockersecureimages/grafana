# Grafana

Grafana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~180MB)

Security scanning using Clair
```
clair-scanner secureimages/grafana:7.2.1-alpine-3.12.0
2020/10/15 19:33:18 [INFO] ▶ Start clair-scanner
2020/10/15 19:33:20 [INFO] ▶ Server listening on port 9279
2020/10/15 19:33:20 [INFO] ▶ Analyzing 31609b718dd2bed92b93b1ab00c0ff67419a3121d0144bef0dc6ca49718820a7
2020/10/15 19:33:20 [INFO] ▶ Analyzing 9d03e2866bde2d0af5594bfc951bdb857cd8567c3d3113d71b06b8001eb625a7
2020/10/15 19:33:20 [INFO] ▶ Analyzing 04e6b86d05a099e2f8ceaff1af138ea12b37be2047a8e20d2dc623dbc12aa9e0
2020/10/15 19:33:20 [INFO] ▶ Analyzing eaf5797d6128ea6bc63c202aeb39b088afab55d23c89648de1e4653a2749d089
2020/10/15 19:33:20 [INFO] ▶ Analyzing a0ab3f3d319b295e4bdef7d859414b461499579bd750fe10b3c6fcb91d4055a3
2020/10/15 19:33:20 [INFO] ▶ Image [secureimages/grafana:7.2.1-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress secureimages/grafana:7.2.1-alpine-3.12.0
2020-10-15T19:33:27.208Z        INFO    Need to update DB
2020-10-15T19:33:27.208Z        INFO    Downloading DB...
2020-10-15T19:34:13.507Z        INFO    Detecting Alpine vulnerabilities...

secureimages/grafana:7.2.1-alpine-3.12.0 (alpine 3.12.0)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~180MB)

[https://hub.docker.com/r/grafana/grafana](https://hub.docker.com/r/grafana/grafana)
```
docker pull grafana/grafana:7.2.1
```

Security scanning using Clair
```
clair-scanner grafana/grafana:7.2.1
2020/10/15 19:34:17 [INFO] ▶ Start clair-scanner
2020/10/15 19:34:20 [INFO] ▶ Server listening on port 9279
2020/10/15 19:34:20 [INFO] ▶ Analyzing 31609b718dd2bed92b93b1ab00c0ff67419a3121d0144bef0dc6ca49718820a7
2020/10/15 19:34:20 [INFO] ▶ Analyzing 4b5eb16158ae49262962304a6066e45ee2a779bab77a91597e8967ed62f75321
2020/10/15 19:34:20 [INFO] ▶ Analyzing a8496027b57fc86cc353a1d9799c830cc92d5ea02587bc6a6d0d470a85a797fb
2020/10/15 19:34:21 [INFO] ▶ Analyzing 985eedb70380035002315be8cc24f9ec9685013c044c8edc69baa61c42846bb2
2020/10/15 19:34:21 [INFO] ▶ Analyzing 2a498012f21858f57bad027c49ff7bd927847fa417491c4e7dc16a5ee20c013e
2020/10/15 19:34:21 [INFO] ▶ Analyzing 0b922997af0a3476ea7a3a042a863f18eb0b2a2b7d5af08d02f12a146adfbb79
2020/10/15 19:34:21 [INFO] ▶ Image [grafana/grafana:7.2.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress grafana/grafana:7.2.1
2020-10-15T19:34:25.936Z        INFO    Need to update DB
2020-10-15T19:34:25.936Z        INFO    Downloading DB...
2020-10-15T19:35:00.493Z        INFO    Detecting Alpine vulnerabilities...

grafana/grafana:7.2.1 (alpine 3.12.0)
=====================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
