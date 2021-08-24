# Grafana

Grafana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~197MB)

Security scanning using Clair
```
clair-scanner secureimages/grafana:8.1.2-alpine-3.14.1
2021/08/24 09:17:18 [INFO] ▶ Start clair-scanner
2021/08/24 09:17:20 [INFO] ▶ Server listening on port 9279
2021/08/24 09:17:20 [INFO] ▶ Analyzing 11cbe68173689fb732863a26e9c9217da15b278edc951dcae1effb426247f521
2021/08/24 09:17:20 [INFO] ▶ Analyzing 538afacca5c048b30196d3886ef5cab086af86249890ce6fc6a4d2b904d3e3e0
2021/08/24 09:17:20 [INFO] ▶ Analyzing 68616d318dc8c75e2fd5bfbb9049770b898cd7a95218c9724b162cf0863b9b08
2021/08/24 09:17:20 [INFO] ▶ Analyzing 49504dabeee58bc38816b3270e974d12fc634203290ac4da06f2b39e912e79c8
2021/08/24 09:17:20 [INFO] ▶ Analyzing 299c95e8de3cfb989eddad7b7769b185722a106aa307cf00aebf77633f9b13fa
2021/08/24 09:17:20 [WARN] ▶ Image [secureimages/grafana:8.1.2-alpine-3.14.1] contains 1 total vulnerabilities
2021/08/24 09:17:20 [ERRO] ▶ Image [secureimages/grafana:8.1.2-alpine-3.14.1] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.19.2 --no-progress secureimages/grafana:8.1.2-alpine-3.14.1
2021-08-24T09:17:25.159Z        INFO    Need to update DB
2021-08-24T09:17:25.159Z        INFO    Downloading DB...
2021-08-24T09:17:30.177Z        INFO    Detected OS: alpine
2021-08-24T09:17:30.177Z        INFO    Detecting Alpine vulnerabilities...
2021-08-24T09:17:30.177Z        INFO    Number of language-specific files: 2
2021-08-24T09:17:30.177Z        INFO    Detecting gobinary vulnerabilities...

secureimages/grafana:8.1.2-alpine-3.14.1 (alpine 3.14.1)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/grafana/bin/grafana-cli (gobinary)
============================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/grafana/bin/grafana-server (gobinary)
===============================================
Total: 1 (UNKNOWN: 0, LOW: 0, MEDIUM: 1, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~213MB)

[https://hub.docker.com/r/grafana/grafana](https://hub.docker.com/r/grafana/grafana)
```
docker pull grafana/grafana:8.1.2
```

Security scanning using Clair
```
clair-scanner grafana/grafana:8.12
2021/08/24 09:17:35 [INFO] ▶ Start clair-scanner
2021/08/24 09:17:38 [INFO] ▶ Server listening on port 9279
2021/08/24 09:17:38 [INFO] ▶ Analyzing d09376239d873ace0c02b1b53834f0fe3167a652a8fc436465db0171eb639b61
2021/08/24 09:17:38 [INFO] ▶ Analyzing 2e450489cb160c5276532db845dd5b8121118cfc2a039e48628bc4511617de9a
2021/08/24 09:17:38 [INFO] ▶ Analyzing 58a73a80a3a215a9955983fe23812bd47f1f88cd169605e5d9c7df1014a5f49a
2021/08/24 09:17:38 [INFO] ▶ Analyzing da6d75c7ee98ca3b8f9c837cdf61d83ecbf296a1aeb65079c3e6ff0bd5fc9fba
2021/08/24 09:17:38 [INFO] ▶ Analyzing 660061c87bcba78e9008fe47ebcc95445b137e1f87c74188e8ddc53ee5138ac7
2021/08/24 09:17:38 [INFO] ▶ Analyzing 29005283fb016c32e24a5df2ea25161c618ad54550ad7940b295982a86fcc83f
2021/08/24 09:17:38 [INFO] ▶ Analyzing 40498e663b9539c161df69541226749439688036a01d42b3e4e9f4c529e4293f
2021/08/24 09:17:38 [INFO] ▶ Analyzing 41b3aeed8a5293a4b8d4862ea360ebcd78991951a549721e8fdb14eddca24ef7
2021/08/24 09:17:38 [WARN] ▶ Image [grafana/grafana:8.1.2] contains 2 total vulnerabilities
2021/08/24 09:17:38 [ERRO] ▶ Image [grafana/grafana:8.1.2] contains 2 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.19.2 --no-progress grafana/grafana:8.1.2
2021-08-24T09:17:41.604Z        INFO    Need to update DB
2021-08-24T09:17:41.604Z        INFO    Downloading DB...
2021-08-24T09:17:48.543Z        INFO    Detected OS: alpine
2021-08-24T09:17:48.543Z        INFO    Detecting Alpine vulnerabilities...
2021-08-24T09:17:48.544Z        INFO    Number of language-specific files: 2
2021-08-24T09:17:48.544Z        INFO    Detecting gobinary vulnerabilities...

grafana/grafana:8.1.2 (alpine 3.13.5)
=====================================
Total: 1 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 1)

usr/share/grafana/bin/grafana-cli (gobinary)
============================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

usr/share/grafana/bin/grafana-server (gobinary)
===============================================
Total: 1 (UNKNOWN: 0, LOW: 0, MEDIUM: 1, HIGH: 0, CRITICAL: 0)
```
