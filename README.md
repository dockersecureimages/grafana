# Grafana

Grafana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~157MB)

Security scanning using Clair
```
clair-scanner secureimages/grafana:7.0.1-alpine-3.11.6
2020/05/29 12:45:27 [INFO] ▶ Start clair-scanner
2020/05/29 12:45:29 [INFO] ▶ Server listening on port 9279
2020/05/29 12:45:29 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/05/29 12:45:29 [INFO] ▶ Analyzing 62ad394379e48c4056137deb64bf69b6a5035da236611444bf8bc4c75a4a8c34
2020/05/29 12:45:29 [INFO] ▶ Analyzing a59a57d8615033ba29b3c10e59e592eceab8ad06b98f1d7b9dc90e07e515b1d6
2020/05/29 12:45:29 [INFO] ▶ Analyzing a07d5cbb00f987476606719f2999603cee6b4b276c933b46538a6813eebbbb41
2020/05/29 12:45:29 [INFO] ▶ Analyzing a293da68295b49687c1e98c47976d227a847d68a9dcddfd8822c09df0732e3d1
2020/05/29 12:45:29 [INFO] ▶ Image [secureimages/grafana:7.0.1-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.8.0 --no-progress secureimages/grafana:7.0.1-alpine-3.11.6
2020-05-29T09:45:36.479Z        INFO    Need to update DB
2020-05-29T09:45:36.479Z        INFO    Downloading DB...
2020-05-29T09:45:43.529Z        INFO    Detecting Alpine vulnerabilities...

secureimages/grafana:7.0.1-alpine-3.11.6 (alpine 3.11.6)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~158MB)

[https://hub.docker.com/r/grafana/grafana](https://hub.docker.com/r/grafana/grafana)
```
docker pull grafana/grafana:7.0.1
```

Security scanning using Clair
```
clair-scanner grafana/grafana:7.0.1
2020/05/29 12:45:51 [INFO] ▶ Start clair-scanner
2020/05/29 12:45:53 [INFO] ▶ Server listening on port 9279
2020/05/29 12:45:53 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/05/29 12:45:53 [INFO] ▶ Analyzing 101ecd9fce427e241761eed63030d8ad8bfa552fda02e5f400287923095451ab
2020/05/29 12:45:53 [INFO] ▶ Analyzing bfad4271ea809301ad4dadd861088519c6484f8594c4d014095f17f3f35f0751
2020/05/29 12:45:53 [INFO] ▶ Analyzing 7ab86f0f4db99f84918922647f98ccda61b6111510eda5bb4d3a3779b2ed3c89
2020/05/29 12:45:53 [INFO] ▶ Analyzing fed3d871665a8af0c1320f841d54ab516e255c1c01a72e7c7cc9727222ff991d
2020/05/29 12:45:53 [INFO] ▶ Analyzing e0efce7073aa258e991c81a940d23b5f1f4b2bf95c6f6577d0cbccfc8e9ddb47
2020/05/29 12:45:53 [INFO] ▶ Image [grafana/grafana:7.0.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.8.0 --no-progress grafana/grafana:7.0.1
2020-05-29T09:45:58.882Z        INFO    Need to update DB
2020-05-29T09:45:58.882Z        INFO    Downloading DB...
2020-05-29T09:46:05.978Z        INFO    Detecting Alpine vulnerabilities...

grafana/grafana:7.0.1 (alpine 3.11.6)
=====================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
