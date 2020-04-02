# Grafana

Grafana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/grafana:6.7.2-alpine-3.11.5
2020/04/02 15:29:52 [INFO] ▶ Start clair-scanner
2020/04/02 15:29:54 [INFO] ▶ Server listening on port 9279
2020/04/02 15:29:54 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/04/02 15:29:55 [INFO] ▶ Analyzing 27de13179ccbad47da1b31c2d72a71da9968e377b2627a48c2e3479b1826ad0b
2020/04/02 15:29:55 [INFO] ▶ Analyzing 5651df75ff5dee098098da157b580782cbe1cc1b00ccde82aa70dcb5df3c8f23
2020/04/02 15:29:55 [INFO] ▶ Analyzing 07eda0e677ff658794a4cbe11ba5258efa34c583282b5ed2cfde03af0e8e96f1
2020/04/02 15:29:55 [INFO] ▶ Analyzing 07a4b46d2f686ada569519d1d01563f649065186da56195e1a7b60976a74a046
2020/04/02 15:29:55 [INFO] ▶ Image [secureimages/grafana:6.7.2-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress secureimages/grafana:6.7.2-alpine-3.11.5
2020-04-02T12:30:00.713Z        INFO    Need to update DB
2020-04-02T12:30:00.713Z        INFO    Downloading DB...
2020-04-02T12:30:04.254Z        INFO    Reopening DB...
2020-04-02T12:30:07.984Z        INFO    Detecting Alpine vulnerabilities...

secureimages/grafana:6.7.2-alpine-3.11.5 (alpine 3.11.5)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/grafana/grafana](https://hub.docker.com/r/grafana/grafana)
```
docker pull grafana/grafana:6.7.2
```

Security scanning using Clair
```
clair-scanner grafana/grafana:6.7.2
2020/04/02 15:30:13 [INFO] ▶ Start clair-scanner
2020/04/02 15:30:17 [INFO] ▶ Server listening on port 9279
2020/04/02 15:30:17 [INFO] ▶ Analyzing 9b18a7418f4cfa9967437868cacf628a9d4c9791bff790888f5a33ef7830c46a
2020/04/02 15:30:17 [INFO] ▶ Analyzing 15798959709b3fe9e37468eb1c3d907aef34aa2538346bfbe906b797adc20b0e
2020/04/02 15:30:17 [INFO] ▶ Analyzing 6ce4ac67014f1e696fa3d674492b9c876a207b742548ea8f6b2a1a1deb7f150b
2020/04/02 15:30:17 [INFO] ▶ Analyzing 6354b52f299bf247a8f6547239768a9944814c5023606a3e43e61cd1d1b4d5de
2020/04/02 15:30:17 [INFO] ▶ Analyzing 111e4e23b26e57bd9cccb177e4e164bf3ee56a590c40db75a22b97e34a717b88
2020/04/02 15:30:17 [INFO] ▶ Analyzing 06c24583a7377c30cad4f22540843cddeb96710d5bf8f5e8f9a0164b76943238
2020/04/02 15:30:17 [INFO] ▶ Analyzing 978779d729b8e3c1d04d9dfcc813093c2eecc72bc1588b539c0dd986df29a634
2020/04/02 15:30:17 [INFO] ▶ Analyzing d3bdac85b409fc5309868e2f3d093ec686a852b07dd86f156a6d4eb0c7661073
2020/04/02 15:30:17 [INFO] ▶ Image [grafana/grafana:6.7.2] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress grafana/grafana:6.7.2
2020-04-02T12:30:25.433Z        INFO    Need to update DB
2020-04-02T12:30:25.433Z        INFO    Downloading DB...
2020-04-02T12:30:30.045Z        INFO    Reopening DB...
2020-04-02T12:30:35.575Z        INFO    Detecting Alpine vulnerabilities...

grafana/grafana:6.7.2 (alpine 3.10.4)
=====================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
