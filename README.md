# Grafana

Grafana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/grafana:6.5.3-alpine-3.11.3
2020/01/20 21:21:59 [INFO] ▶ Start clair-scanner
2020/01/20 21:22:01 [INFO] ▶ Server listening on port 9279
2020/01/20 21:22:01 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/01/20 21:22:01 [INFO] ▶ Analyzing 9ad391b4e14c473f9ccd69a51cadeac72e64c8de67867cd6017a9fff6c10eca7
2020/01/20 21:22:01 [INFO] ▶ Analyzing 4618312f30dbfdc016e90a47b5d5e34cae567b05aa9e8e515faba1bca75c53e4
2020/01/20 21:22:01 [INFO] ▶ Analyzing 914f5af3177285e73da014e108303711ae1aaafbfb91dbd087f5ac9d2f9c1eed
2020/01/20 21:22:01 [INFO] ▶ Analyzing f1d769ee544bbb34e8ce6308a8bfb82b38621d36815863ff9c3d4d8b3ab758dd
2020/01/20 21:22:02 [INFO] ▶ Image [secureimages/grafana:6.5.3-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress secureimages/grafana:6.5.3-alpine-3.11.3
2020-01-20T19:22:15.807Z        INFO    Need to update DB
2020-01-20T19:22:15.807Z        INFO    Downloading DB...
2020-01-20T19:22:19.873Z        INFO    Reopening DB...
2020-01-20T19:22:22.419Z        INFO    Detecting Alpine vulnerabilities...

secureimages/grafana:6.5.3-alpine-3.11.3 (alpine 3.11.3)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/grafana/grafana](https://hub.docker.com/r/grafana/grafana)
```
docker pull grafana/grafana:6.5.3
```

Security scanning using Clair
```
clair-scanner grafana/grafana:6.5.3
2020/01/20 21:22:39 [INFO] ▶ Start clair-scanner
2020/01/20 21:22:42 [INFO] ▶ Server listening on port 9279
2020/01/20 21:22:42 [INFO] ▶ Analyzing 04e45c0111fb11f85d938ddf23db2bb1cd729651296b5a94fb167d7770267313
2020/01/20 21:22:42 [INFO] ▶ Analyzing 3ff0258cebe4284c78d4d0415c49c2aa09cdf5885176209c9a11980426cd578d
2020/01/20 21:22:42 [INFO] ▶ Analyzing ea7d48ef634c56ec7107d3536208bf962caf119904185a1db6aaa5b518b1e43e
2020/01/20 21:22:42 [INFO] ▶ Analyzing 4eecae82018427662f38a0fee03e1556cc947d43e071d94ee6f937276a1d2bd0
2020/01/20 21:22:42 [INFO] ▶ Analyzing 8e78c9c3013fb92820454f11aefd5afe07b6de9ba359ac8445dc5ef5fc7fa5fb
2020/01/20 21:22:42 [INFO] ▶ Analyzing 5e7fcb7ec94e190b21c07d445ff0f94e23cd0a3407212e3d6a1ecd9188836b21
2020/01/20 21:22:42 [INFO] ▶ Analyzing 6757224b4dae76e7012b96becfdfb3f6bbae0c84b742b60b9fdf53ee201d11af
2020/01/20 21:22:42 [INFO] ▶ Analyzing ce0725e8a12dfc82ecfa499965bd8d0337e0210a85c97d9e258fc9abebf9415c
2020/01/20 21:22:42 [INFO] ▶ Image [grafana/grafana:6.5.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress grafana/grafana:6.5.3
2020-01-20T19:22:58.020Z        INFO    Need to update DB
2020-01-20T19:22:58.020Z        INFO    Downloading DB...
2020-01-20T19:23:01.846Z        INFO    Reopening DB...
2020-01-20T19:23:06.342Z        INFO    Detecting Alpine vulnerabilities...

grafana/grafana:6.5.3 (alpine 3.10.3)
=====================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
