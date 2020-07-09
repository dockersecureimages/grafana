# Grafana

Grafana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~158MB)

Security scanning using Clair
```
clair-scanner secureimages/grafana:7.0.6-alpine-3.12.0
2020/07/09 20:37:57 [INFO] ▶ Start clair-scanner
2020/07/09 20:37:58 [INFO] ▶ Server listening on port 9279
2020/07/09 20:37:58 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/07/09 20:37:58 [INFO] ▶ Analyzing 300e2e8c2535057c8127a5652ebf1d3708de511d853f8bcff839a441539c45ff
2020/07/09 20:37:58 [INFO] ▶ Analyzing c83c5bcfe82c8476448ab99b806b0c2b433ff3f76689a33686cf9db87dd47d1d
2020/07/09 20:37:58 [INFO] ▶ Analyzing d59108d25843e27ca815aee0662059766a2ab1ca4862a7842b33da1dc5d8d2dc
2020/07/09 20:37:58 [INFO] ▶ Analyzing 4c72de7827691b1cfaa9cadbe6e84c0998053a50daed1356953b4b57daad40b6
2020/07/09 20:37:58 [INFO] ▶ Image [secureimages/grafana:7.0.6-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/grafana:7.0.6-alpine-3.12.0
2020-07-09T17:38:04.677Z        INFO    Need to update DB
2020-07-09T17:38:04.677Z        INFO    Downloading DB...
2020-07-09T17:38:10.532Z        INFO    Detecting Alpine vulnerabilities...

secureimages/grafana:7.0.6-alpine-3.12.0 (alpine 3.12.0)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~159MB)

[https://hub.docker.com/r/grafana/grafana](https://hub.docker.com/r/grafana/grafana)
```
docker pull grafana/grafana:7.0.6
```

Security scanning using Clair
```
clair-scanner grafana/grafana:7.0.6
2020/07/09 20:38:15 [INFO] ▶ Start clair-scanner
2020/07/09 20:38:17 [INFO] ▶ Server listening on port 9279
2020/07/09 20:38:17 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/07/09 20:38:17 [INFO] ▶ Analyzing 23b26ee23cc4497520f2d4a5feb9ca89d9cb0a25a5a0fdf7f42a3e9de9cfd747
2020/07/09 20:38:18 [INFO] ▶ Analyzing fabd9e73d44ce9a9d2cfab9d0ddcaefa6076798cd279f3b95769919ccc3ae9ad
2020/07/09 20:38:18 [INFO] ▶ Analyzing 7b8f5e3da86e653ec3bb161461b730381102076423b04ba445b0dbea3f87e3fb
2020/07/09 20:38:18 [INFO] ▶ Analyzing ef91545a96fe7acc5b782f64b28acdcb0d95f27985430ba52db51ae5ca97786c
2020/07/09 20:38:18 [INFO] ▶ Analyzing 6b637aab47b3e51b6fbf4dd73b8b388a68cc02bb45b7ebd6b85a2d4e9dcbe543
2020/07/09 20:38:18 [INFO] ▶ Image [grafana/grafana:7.0.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress grafana/grafana:7.0.6
2020-07-09T17:38:22.904Z        INFO    Need to update DB
2020-07-09T17:38:22.904Z        INFO    Downloading DB...
2020-07-09T17:38:30.648Z        INFO    Detecting Alpine vulnerabilities...

grafana/grafana:7.0.6 (alpine 3.11.6)
=====================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
