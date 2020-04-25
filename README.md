# Grafana

Grafana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~193MB)

Security scanning using Clair
```
clair-scanner secureimages/grafana:6.7.3-alpine-3.11.6
2020/04/25 12:40:49 [INFO] ▶ Start clair-scanner
2020/04/25 12:40:51 [INFO] ▶ Server listening on port 9279
2020/04/25 12:40:51 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/04/25 12:40:51 [INFO] ▶ Analyzing b596437d1771dc5e0755a38affa1a476ae8e70e1ee486d095fa148f62205b39f
2020/04/25 12:40:51 [INFO] ▶ Analyzing 6541c8bc434246df97e340d42baa4fae413a47c9287245c5e7513f452db03916
2020/04/25 12:40:51 [INFO] ▶ Analyzing 9ad4a6a4a9b3013e2d994e989cb8505735d1f142737207befb1a7f40c8845f59
2020/04/25 12:40:51 [INFO] ▶ Analyzing 9101d65c5f58a6c2d3f981a77280ed4146996da5131b926cfed6929aab991a5a
2020/04/25 12:40:51 [INFO] ▶ Image [secureimages/grafana:6.7.3-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/grafana:6.7.3-alpine-3.11.6
2020-04-25T09:40:54.168Z        INFO    Need to update DB
2020-04-25T09:40:54.168Z        INFO    Downloading DB...
2020-04-25T09:41:00.210Z        INFO    Detecting Alpine vulnerabilities...

secureimages/grafana:6.7.3-alpine-3.11.6 (alpine 3.11.6)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~233MB)

[https://hub.docker.com/r/grafana/grafana](https://hub.docker.com/r/grafana/grafana)
```
docker pull grafana/grafana:6.7.3
```

Security scanning using Clair
```
clair-scanner grafana/grafana:6.7.3
2020/04/25 12:41:07 [INFO] ▶ Start clair-scanner
2020/04/25 12:41:11 [INFO] ▶ Server listening on port 9279
2020/04/25 12:41:11 [INFO] ▶ Analyzing 9b18a7418f4cfa9967437868cacf628a9d4c9791bff790888f5a33ef7830c46a
2020/04/25 12:41:11 [INFO] ▶ Analyzing 6f429de321b69e4e6f4c14ff76e0bf83b6dbe5bc96e41aac0b97f189f9f59580
2020/04/25 12:41:11 [INFO] ▶ Analyzing 5aa45a90130d1cfc82b9d5c74836179c015caf0ab93d6d40293f36cd9034b36c
2020/04/25 12:41:11 [INFO] ▶ Analyzing f2e4b96d51c8c5ef622c39c5c1d9b4a278df7f1ffdc2dfcc50f16c62931ff3a1
2020/04/25 12:41:11 [INFO] ▶ Analyzing a8e60de19adf31769d76020f4b42acfa646fe3c1447d11a0db8fe0eb9f3e94f1
2020/04/25 12:41:11 [INFO] ▶ Analyzing a8ba7fdc78a8ed67ad1a2f8d29d9dc0db52427a54c4b15d05e8961605d2078aa
2020/04/25 12:41:11 [INFO] ▶ Analyzing a693351f2d6be98f4b26cbc7b4b6d28a1857fca7678731531f72452b2e87206f
2020/04/25 12:41:11 [INFO] ▶ Analyzing bd60f5ba7184dac6ff47c466af3bd5d2180d3e207b2a39a8c586e2dba1e9d98d
2020/04/25 12:41:11 [INFO] ▶ Image [grafana/grafana:6.7.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress grafana/grafana:6.7.3
2020-04-25T09:41:14.566Z        INFO    Need to update DB
2020-04-25T09:41:14.566Z        INFO    Downloading DB...
2020-04-25T09:41:22.884Z        INFO    Detecting Alpine vulnerabilities...

grafana/grafana:6.7.3 (alpine 3.10.4)
=====================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
