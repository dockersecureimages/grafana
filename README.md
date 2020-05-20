# Grafana

Grafana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~156MB)

Security scanning using Clair
```
clair-scanner secureimages/grafana:7.0.0-alpine-3.11.6
2020/05/20 10:54:24 [INFO] ▶ Start clair-scanner
2020/05/20 10:54:26 [INFO] ▶ Server listening on port 9279
2020/05/20 10:54:26 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/05/20 10:54:26 [INFO] ▶ Analyzing 20c18ee5383a475c8e9de5fc8c0ae59df941511396e7010fe7d1c966f5a8a761
2020/05/20 10:54:26 [INFO] ▶ Analyzing 3931883ff09c1984301d63894ec4f3595989529eea9291f17754f007441b2170
2020/05/20 10:54:26 [INFO] ▶ Analyzing 2ca129c4d0f0cb05d3cf3291ee20ca56165a8c04ad65277687b48639b6a0c63b
2020/05/20 10:54:26 [INFO] ▶ Analyzing 0b6dfd7743f2881716c365e72553b74edf3d68c34f18c0840f0e4fb61c8f3c7a
2020/05/20 10:54:27 [INFO] ▶ Image [secureimages/grafana:7.0.0-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.7.0 --no-progress secureimages/grafana:7.0.0-alpine-3.11.6
2020-05-20T07:54:32.917Z        INFO    Need to update DB
2020-05-20T07:54:32.917Z        INFO    Downloading DB...
2020-05-20T07:54:39.641Z        INFO    Detecting Alpine vulnerabilities...

secureimages/grafana:7.0.0-alpine-3.11.6 (alpine 3.11.6)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~156MB)

[https://hub.docker.com/r/grafana/grafana](https://hub.docker.com/r/grafana/grafana)
```
docker pull grafana/grafana:7.0.0
```

Security scanning using Clair
```
clair-scanner grafana/grafana:7.0.0
2020/05/20 10:54:54 [INFO] ▶ Start clair-scanner
2020/05/20 10:54:56 [INFO] ▶ Server listening on port 9279
2020/05/20 10:54:56 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/05/20 10:54:56 [INFO] ▶ Analyzing 5e97b700af583f88662109f1a8992669db11f36f181ad69116febda6f4cf67ef
2020/05/20 10:54:56 [INFO] ▶ Analyzing 59e4b1b20d1412be0a433a55082ba02543b242cd354463d15dcb9b34c8473055
2020/05/20 10:54:56 [INFO] ▶ Analyzing c66a78a9351436b8513809821b1a6e4762b301473f7baa114a633e3e6b728831
2020/05/20 10:54:56 [INFO] ▶ Analyzing b93e600c7cecf0751e574c378f978efe5dae7cdeb0e73fda73dc0ec927a1621b
2020/05/20 10:54:56 [INFO] ▶ Analyzing 2cde210c739ca58b22cfd1386c620b3a2c81ddcff97184eb781c2ebb6898007a
2020/05/20 10:54:56 [INFO] ▶ Image [grafana/grafana:7.0.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.7.0 --no-progress grafana/grafana:7.0.0
2020-05-20T07:55:02.549Z        INFO    Need to update DB
2020-05-20T07:55:02.549Z        INFO    Downloading DB...
2020-05-20T07:55:09.718Z        INFO    Detecting Alpine vulnerabilities...

grafana/grafana:7.0.0 (alpine 3.11.6)
=====================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
