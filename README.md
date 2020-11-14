# Grafana

Grafana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~186MB)

Security scanning using Clair
```
clair-scanner secureimages/grafana:7.3.2-alpine-3.12.1
2020/11/14 15:50:39 [INFO] ▶ Start clair-scanner
2020/11/14 15:50:41 [INFO] ▶ Server listening on port 9279
2020/11/14 15:50:41 [INFO] ▶ Analyzing ff72598b05f57e6f83d56b858ba9783796e99aea2dcef391b3fa688c1e077ae5
2020/11/14 15:50:41 [INFO] ▶ Analyzing 689518230480e687de94c4f143a6607aee754ba35a3c691ad5293d481f66b694
2020/11/14 15:50:41 [INFO] ▶ Analyzing 3691ad93575996d0593eceacee8e078f379cd8f3f2df0da8575208c5451409fe
2020/11/14 15:50:41 [INFO] ▶ Analyzing 970f4236271626e1ed22858b3b42c4b781dab1b3211dfb11bdd6fbaa0371a2a6
2020/11/14 15:50:41 [INFO] ▶ Analyzing f225cd0dc35b7714c4d089064c110ee01ec8027a96a724de8188adf45973936c
2020/11/14 15:50:41 [INFO] ▶ Image [secureimages/grafana:7.3.2-alpine-3.12.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress secureimages/grafana:7.3.2-alpine-3.12.1
2020-11-14T15:50:44.636Z        INFO    Need to update DB
2020-11-14T15:50:44.636Z        INFO    Downloading DB...
2020-11-14T15:50:51.155Z        INFO    Detecting Alpine vulnerabilities...

secureimages/grafana:7.3.2-alpine-3.12.1 (alpine 3.12.1)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~186MB)

[https://hub.docker.com/r/grafana/grafana](https://hub.docker.com/r/grafana/grafana)
```
docker pull grafana/grafana:7.3.2
```

Security scanning using Clair
```
clair-scanner grafana/grafana:7.3.2
2020/11/14 15:50:56 [INFO] ▶ Start clair-scanner
2020/11/14 15:50:58 [INFO] ▶ Server listening on port 9279
2020/11/14 15:50:58 [INFO] ▶ Analyzing ff72598b05f57e6f83d56b858ba9783796e99aea2dcef391b3fa688c1e077ae5
2020/11/14 15:50:58 [INFO] ▶ Analyzing 65dc8f184d44bdfb0c9c27a2ac988c2e0a36a4981e712c3166f3898ab7c0470f
2020/11/14 15:50:58 [INFO] ▶ Analyzing 4db22a5e643a05e6a1b09b5d847d3352465f7f3041757d58f3b0a6fbb5108fdf
2020/11/14 15:50:58 [INFO] ▶ Analyzing 2ef558021cf320b2d20e324d81dbeb31c5107fe80695e540f5b4d5962ff37135
2020/11/14 15:50:58 [INFO] ▶ Analyzing 5bdf259f0fe13d95ce4dde5b39b06736a1e14b187a5cea958ecfb72b0f5ada8f
2020/11/14 15:50:58 [INFO] ▶ Analyzing 5aee2100acb1d296a3ec2991894cfaf1f7419233483782b0658b2e0e1c9d73ac
2020/11/14 15:50:58 [INFO] ▶ Analyzing 6ed8857d9ea246d7a5df84a99afb38ef6433970a992ce793d9ee486492c6d7f3
2020/11/14 15:50:58 [INFO] ▶ Analyzing 88a52d172f57f5ec02b9db345d2f5531f6662d3ca5be4ac750625e938613a210
2020/11/14 15:50:58 [INFO] ▶ Image [grafana/grafana:7.3.2] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress grafana/grafana:7.3.2
2020-11-14T15:51:01.888Z        INFO    Need to update DB
2020-11-14T15:51:01.888Z        INFO    Downloading DB...
2020-11-14T15:51:08.606Z        INFO    Detecting Alpine vulnerabilities...

grafana/grafana:7.3.2 (alpine 3.12.1)
=====================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
