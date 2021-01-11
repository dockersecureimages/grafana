# Grafana

Grafana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~186MB)

Security scanning using Clair
```
clair-scanner secureimages/grafana:7.3.6-alpine-3.12.3
2021/01/11 09:14:31 [INFO] ▶ Start clair-scanner
2021/01/11 09:14:33 [INFO] ▶ Server listening on port 9279
2021/01/11 09:14:33 [INFO] ▶ Analyzing 239a994d90a30d28d70001f62415dabc8636df0ebb561fe4d6c1b4b1d4a6cbcf
2021/01/11 09:14:33 [INFO] ▶ Analyzing 3278a3be365f2b2366e134efcf473fe00dd88644b8d78bb4e4ea60b0afd50ba1
2021/01/11 09:14:33 [INFO] ▶ Analyzing 8a36dc77b0b9ab4578f64e85ad62536b3e62225b2232c4364e5c049e225ca992
2021/01/11 09:14:33 [INFO] ▶ Analyzing c3cb6e4aed90814d2c27d9bffee232f8379b3b00c4e97a5be67f97c40574ed78
2021/01/11 09:14:33 [INFO] ▶ Analyzing 055134ba3418c6fef62fd6248474140a185e7332152c3e682720597bfb86a35c
2021/01/11 09:14:33 [INFO] ▶ Image [secureimages/grafana:7.3.6-alpine-3.12.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.15.0 --no-progress secureimages/grafana:7.3.6-alpine-3.12.3
2021-01-11T09:14:38.440Z        INFO    Need to update DB
2021-01-11T09:14:38.440Z        INFO    Downloading DB...
2021-01-11T09:14:45.307Z        INFO    Detecting Alpine vulnerabilities...
2021-01-11T09:14:45.307Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/grafana:7.3.6-alpine-3.12.3 (alpine 3.12.3)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~187MB)

[https://hub.docker.com/r/grafana/grafana](https://hub.docker.com/r/grafana/grafana)
```
docker pull grafana/grafana:7.3.6
```

Security scanning using Clair
```
clair-scanner grafana/grafana:7.3.6
2021/01/11 09:14:50 [INFO] ▶ Start clair-scanner
2021/01/11 09:14:53 [INFO] ▶ Server listening on port 9279
2021/01/11 09:14:53 [INFO] ▶ Analyzing ff72598b05f57e6f83d56b858ba9783796e99aea2dcef391b3fa688c1e077ae5
2021/01/11 09:14:53 [INFO] ▶ Analyzing be46aaaa7cd2098ad0e1e4428746e605f31f7b0a8dc373a828e570c1dd91652f
2021/01/11 09:14:53 [INFO] ▶ Analyzing 8a59dd90858e45bfc1f2570b595dbf47e945ed7707c83f2f672a30128df9804d
2021/01/11 09:14:53 [INFO] ▶ Analyzing 4b20f72a30ffd797835ddab8be1a8da09cb5a0ed05edaaf90b87dd13c1093749
2021/01/11 09:14:53 [INFO] ▶ Analyzing e4b9f686b8ff887fe1659e8532b2c2d5e5712538c4c2bc5632523648ce69dad5
2021/01/11 09:14:53 [INFO] ▶ Analyzing 4fd8e6f183c82d6f4f802053bc21d73064cc1de04aa5b2b427d9b9881fca08a6
2021/01/11 09:14:53 [INFO] ▶ Analyzing c28d33ce4b2db5f9304b3fedfc6332df45d8d3368e8035157e1a88ce0d0353cf
2021/01/11 09:14:53 [INFO] ▶ Analyzing 9ad6278aedd938924f063aa0cdb680fec32c25e8cc28ec87bb2a8defac2bc352
2021/01/11 09:14:53 [WARN] ▶ Image [grafana/grafana:7.3.6] contains 1 total vulnerabilities
2021/01/11 09:14:53 [ERRO] ▶ Image [grafana/grafana:7.3.6] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.15.0 --no-progress grafana/grafana:7.3.6
2021-01-11T09:14:58.314Z        INFO    Need to update DB
2021-01-11T09:14:58.314Z        INFO    Downloading DB...
2021-01-11T09:15:06.270Z        INFO    Detecting Alpine vulnerabilities...
2021-01-11T09:15:06.271Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

grafana/grafana:7.3.6 (alpine 3.12.1)
=====================================
Total: 4 (UNKNOWN: 0, LOW: 0, MEDIUM: 4, HIGH: 0, CRITICAL: 0)
```
