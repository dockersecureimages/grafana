# Grafana

Grafana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~186MB)

Security scanning using Clair
```
clair-scanner secureimages/grafana:7.5.2-alpine-3.13.3
2021/03/31 08:58:41 [INFO] ▶ Start clair-scanner
2021/03/31 08:58:43 [INFO] ▶ Server listening on port 9279
2021/03/31 08:58:43 [INFO] ▶ Analyzing 7d89ae2c30338875fa3a10be99c984f80dac89b1527ef8115ca77d7fd8eeef92
2021/03/31 08:58:43 [INFO] ▶ Analyzing eb30bfa4cd949c4132283f4ae7b060900ca0b85354d51c441d9a1be1cf4c50fd
2021/03/31 08:58:43 [INFO] ▶ Analyzing e8d3e336947b30a3e570d0dac161fcf86191c0f0169ddfc4c8005e103ead85d7
2021/03/31 08:58:43 [INFO] ▶ Analyzing 14c2c9fc9024e0a016f80b99e37b4b3f90164f560c27ac5ea5fe18caffd2b3ef
2021/03/31 08:58:43 [INFO] ▶ Analyzing b1b3860b2f222b3c28a22a3d5de18460015da7adb6458b0ebb61b44d6299a512
2021/03/31 08:58:44 [WARN] ▶ Image [secureimages/grafana:7.5.2-alpine-3.13.3] contains 2 total vulnerabilities
2021/03/31 08:58:44 [ERRO] ▶ Image [secureimages/grafana:7.5.2-alpine-3.13.3] contains 2 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/grafana:7.5.2-alpine-3.13.3
2021-03-31T08:58:47.976Z        INFO    Need to update DB
2021-03-31T08:58:47.976Z        INFO    Downloading DB...
2021-03-31T08:58:52.870Z        INFO    Detecting Alpine vulnerabilities...
2021-03-31T08:58:52.871Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/grafana:7.5.2-alpine-3.13.3 (alpine 3.13.3)
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
2021/03/31 08:58:57 [INFO] ▶ Start clair-scanner
2021/03/31 08:59:00 [INFO] ▶ Server listening on port 9279
2021/03/31 08:59:00 [INFO] ▶ Analyzing 99bff23309b01c2f69d3363705845feb9ccd8d86446d0d12c0674efa010b2a2b
2021/03/31 08:59:00 [INFO] ▶ Analyzing eae0d58856ab7e43714b5c8def67ebd4395677f9339ba1e2c39c5d6b3b20f3a7
2021/03/31 08:59:00 [INFO] ▶ Analyzing ed091c68ae609c97e967a65d7772baa367e9beea916738146e8a6e800ab3c2fa
2021/03/31 08:59:00 [INFO] ▶ Analyzing dd0b8c898f547844ccb1c7aa72c7a1bb9375a542946ceeb330d85ddcc23ffa72
2021/03/31 08:59:00 [INFO] ▶ Analyzing e0d7e9c1e4f5f37975c777f13cd17fc6fdb592c303812dbfaccc3159fde81448
2021/03/31 08:59:00 [INFO] ▶ Analyzing 658e766bf19a8c38a22b4f5c168cee88154fa3d4d1ee8682afe98dbeb1d6d9a9
2021/03/31 08:59:00 [INFO] ▶ Analyzing 49fca005a502e1dbd13c9d4487ca089e7e612c9482db54b7ab09dc6726a2a263
2021/03/31 08:59:00 [INFO] ▶ Analyzing ffa0ee599135af000d88a334d37d27fbb25034113ce5910a93146f2f8e806bd4
2021/03/31 08:59:00 [WARN] ▶ Image [grafana/grafana:7.5.2] contains 1 total vulnerabilities
2021/03/31 08:59:00 [ERRO] ▶ Image [grafana/grafana:7.5.2] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress grafana/grafana:7.5.2
2021-03-31T08:59:03.353Z        INFO    Need to update DB
2021-03-31T08:59:03.353Z        INFO    Downloading DB...
2021-03-31T08:59:09.173Z        INFO    Detecting Alpine vulnerabilities...
2021-03-31T08:59:09.174Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

grafana/grafana:7.5.2 (alpine 3.12.5)
=====================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
