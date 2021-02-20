# Grafana

Grafana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~181MB)

Security scanning using Clair
```
clair-scanner secureimages/grafana:7.4.2-alpine-3.13.2
2021/02/20 13:30:53 [INFO] ▶ Start clair-scanner
2021/02/20 13:30:55 [INFO] ▶ Server listening on port 9279
2021/02/20 13:30:55 [INFO] ▶ Analyzing b73bac2fe5a7b9d1abcbf0138798281e20b11e59b4605b104d38e914fa35b4d2
2021/02/20 13:30:55 [INFO] ▶ Analyzing ea5eeea74f129c7ba6fb8234e5289c75e27d2917910a9e11f807ca098744a924
2021/02/20 13:30:55 [INFO] ▶ Analyzing c7c7059d5f880f77047bcc3e88419036e00bdaa09834252ed355eecb6a1ff0fa
2021/02/20 13:30:55 [INFO] ▶ Analyzing a0aa1fcdaefae00ebee5c6ce978776ef215d54cb90db280da12bbacdacc4336d
2021/02/20 13:30:55 [INFO] ▶ Analyzing 22d4491fdb2c70e1a1eeafb848bad0e1107cdf5b543041e4aa98c30b52b8727e
2021/02/20 13:30:55 [WARN] ▶ Image [secureimages/grafana:7.4.2-alpine-3.13.2] contains 1 total vulnerabilities
2021/02/20 13:30:55 [ERRO] ▶ Image [secureimages/grafana:7.4.2-alpine-3.13.2] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/grafana:7.4.2-alpine-3.13.2
2021-02-20T13:30:59.475Z        INFO    Need to update DB
2021-02-20T13:30:59.475Z        INFO    Downloading DB...
2021-02-20T13:31:04.070Z        INFO    Detecting Alpine vulnerabilities...
2021-02-20T13:31:04.070Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/grafana:7.4.2-alpine-3.13.2 (alpine 3.13.2)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~198MB)

[https://hub.docker.com/r/grafana/grafana](https://hub.docker.com/r/grafana/grafana)
```
docker pull grafana/grafana:7.4.2
```

Security scanning using Clair
```
clair-scanner grafana/grafana:7.4.2
2021/02/20 13:31:09 [INFO] ▶ Start clair-scanner
2021/02/20 13:31:11 [INFO] ▶ Server listening on port 9279
2021/02/20 13:31:11 [INFO] ▶ Analyzing 239a994d90a30d28d70001f62415dabc8636df0ebb561fe4d6c1b4b1d4a6cbcf
2021/02/20 13:31:12 [INFO] ▶ Analyzing d7bddf74c9058ba845ebb0009a68ffcf46d7c2f44ca9d3733f21fa671e582776
2021/02/20 13:31:12 [INFO] ▶ Analyzing b99f52e32812614caec6e21c1c85f024cbb716aa3c20581bc53615f71c206094
2021/02/20 13:31:12 [INFO] ▶ Analyzing 0bbe9a03d38547e224e5b469207a20aef8a5b2b3a93916ea08c76ffd31314101
2021/02/20 13:31:12 [INFO] ▶ Analyzing 320479b4fa4fac43b3e531bf67863b938a97b7b98d14dfe24816a101a2bc308f
2021/02/20 13:31:12 [INFO] ▶ Analyzing d183ba3b344ac235b3dcb7fb575d7948f89da10eaf56896a5fce86da1380cd5e
2021/02/20 13:31:12 [INFO] ▶ Analyzing 964b82c2bc35e77e242394fa61e1034f56e31c9e13b7e62f0c2cad2d05f1907b
2021/02/20 13:31:12 [INFO] ▶ Analyzing a52ec8fc510274169548bc72d9692c6ed0acd3e46d01093c9e218fb97f7b31eb
2021/02/20 13:31:12 [INFO] ▶ Image [grafana/grafana:7.4.2] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress grafana/grafana:7.4.2
2021-02-20T13:31:14.511Z        INFO    Need to update DB
2021-02-20T13:31:14.511Z        INFO    Downloading DB...
2021-02-20T13:31:20.962Z        INFO    Detecting Alpine vulnerabilities...
2021-02-20T13:31:20.962Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

grafana/grafana:7.4.2 (alpine 3.12.3)
=====================================
Total: 6 (UNKNOWN: 0, LOW: 2, MEDIUM: 2, HIGH: 2, CRITICAL: 0)
```
