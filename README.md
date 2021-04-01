# Grafana

Grafana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~186MB)

Security scanning using Clair
```
clair-scanner secureimages/grafana:7.5.2-alpine-3.13.4
2021/04/01 12:34:22 [INFO] ▶ Start clair-scanner
2021/04/01 12:34:23 [INFO] ▶ Server listening on port 9279
2021/04/01 12:34:23 [INFO] ▶ Analyzing e46e108285519ee26fa254dfaab29d7d350c0c321daa1350567c5202109138ca
2021/04/01 12:34:23 [INFO] ▶ Analyzing e4a5b2da037a92ca5a00f3ff855718157fa02b56dc591f0f253d54d67c86b84b
2021/04/01 12:34:23 [INFO] ▶ Analyzing fda81c5f40de5d5ae84082c60adf1c15f39968242aafd56b7bf700fc3f08b4ba
2021/04/01 12:34:24 [INFO] ▶ Analyzing b5b9399046d9173f9f67cee420eb42227c7d981083e66d721f48b47c0699ffe5
2021/04/01 12:34:24 [INFO] ▶ Analyzing e19d87ddaae7cf83a36a42d35fababb8d74e282287148b9030f9e4abc9632861
2021/04/01 12:34:24 [WARN] ▶ Image [secureimages/grafana:7.5.2-alpine-3.13.4] contains 1 total vulnerabilities
2021/04/01 12:34:24 [ERRO] ▶ Image [secureimages/grafana:7.5.2-alpine-3.13.4] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/grafana:7.5.2-alpine-3.13.4
2021-04-01T12:34:27.317Z        INFO    Need to update DB
2021-04-01T12:34:27.317Z        INFO    Downloading DB...
2021-04-01T12:34:31.697Z        INFO    Detecting Alpine vulnerabilities...
2021-04-01T12:34:31.698Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/grafana:7.5.2-alpine-3.13.4 (alpine 3.13.4)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~204MB)

[https://hub.docker.com/r/grafana/grafana](https://hub.docker.com/r/grafana/grafana)
```
docker pull grafana/grafana:7.5.2
```

Security scanning using Clair
```
clair-scanner grafana/grafana:7.5.2
2021/04/01 12:34:59 [INFO] ▶ Start clair-scanner
2021/04/01 12:35:02 [INFO] ▶ Server listening on port 9279
2021/04/01 12:35:02 [INFO] ▶ Analyzing 99bff23309b01c2f69d3363705845feb9ccd8d86446d0d12c0674efa010b2a2b
2021/04/01 12:35:02 [INFO] ▶ Analyzing eae0d58856ab7e43714b5c8def67ebd4395677f9339ba1e2c39c5d6b3b20f3a7
2021/04/01 12:35:02 [INFO] ▶ Analyzing ed091c68ae609c97e967a65d7772baa367e9beea916738146e8a6e800ab3c2fa
2021/04/01 12:35:02 [INFO] ▶ Analyzing dd0b8c898f547844ccb1c7aa72c7a1bb9375a542946ceeb330d85ddcc23ffa72
2021/04/01 12:35:02 [INFO] ▶ Analyzing e0d7e9c1e4f5f37975c777f13cd17fc6fdb592c303812dbfaccc3159fde81448
2021/04/01 12:35:02 [INFO] ▶ Analyzing 658e766bf19a8c38a22b4f5c168cee88154fa3d4d1ee8682afe98dbeb1d6d9a9
2021/04/01 12:35:02 [INFO] ▶ Analyzing 49fca005a502e1dbd13c9d4487ca089e7e612c9482db54b7ab09dc6726a2a263
2021/04/01 12:35:02 [INFO] ▶ Analyzing ffa0ee599135af000d88a334d37d27fbb25034113ce5910a93146f2f8e806bd4
2021/04/01 12:35:02 [WARN] ▶ Image [grafana/grafana:7.5.2] contains 1 total vulnerabilities
2021/04/01 12:35:02 [ERRO] ▶ Image [grafana/grafana:7.5.2] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress grafana/grafana:7.5.2
2021-04-01T12:35:08.685Z        INFO    Need to update DB
2021-04-01T12:35:08.685Z        INFO    Downloading DB...
2021-04-01T12:35:15.030Z        INFO    Detecting Alpine vulnerabilities...
2021-04-01T12:35:15.033Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

grafana/grafana:7.5.2 (alpine 3.12.5)
=====================================
Total: 2 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 2, CRITICAL: 0)
```
