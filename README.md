# Grafana

Grafana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~186MB)

Security scanning using Clair
```
clair-scanner secureimages/grafana:7.5.4-alpine-3.13.5
2021/04/16 08:19:38 [INFO] ▶ Start clair-scanner
2021/04/16 08:19:40 [INFO] ▶ Server listening on port 9279
2021/04/16 08:19:40 [INFO] ▶ Analyzing d09376239d873ace0c02b1b53834f0fe3167a652a8fc436465db0171eb639b61
2021/04/16 08:19:40 [INFO] ▶ Analyzing 73aa4fa97f60ade25277cf88c52fec13ff1dd214f314ac7b0fa9409eafabf8ef
2021/04/16 08:19:40 [INFO] ▶ Analyzing 1fc60f672e8860361c6a2b1e918972f10a43f72a7a430f2cdfe42de55a853012
2021/04/16 08:19:40 [INFO] ▶ Analyzing 7a9e2578981f6615adce41582430738334b9161a54aae81e99cae81c5bd388a5
2021/04/16 08:19:40 [INFO] ▶ Analyzing cb1edf5ed3eb2c7122566363aa19eeac78d60c5f06ceeb64ca2c1d2fb3b010c1
2021/04/16 08:19:40 [WARN] ▶ Image [secureimages/grafana:7.5.4-alpine-3.13.5] contains 1 total vulnerabilities
2021/04/16 08:19:40 [ERRO] ▶ Image [secureimages/grafana:7.5.4-alpine-3.13.5] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/grafana:7.5.4-alpine-3.13.5
2021-04-16T08:19:47.055Z        INFO    Need to update DB
2021-04-16T08:19:47.055Z        INFO    Downloading DB...
2021-04-16T08:19:51.841Z        INFO    Detecting Alpine vulnerabilities...
2021-04-16T08:19:51.842Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/grafana:7.5.4-alpine-3.13.5 (alpine 3.13.5)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~204MB)

[https://hub.docker.com/r/grafana/grafana](https://hub.docker.com/r/grafana/grafana)
```
docker pull grafana/grafana:7.5.4
```

Security scanning using Clair
```
clair-scanner grafana/grafana:7.5.4
2021/04/16 08:19:56 [INFO] ▶ Start clair-scanner
2021/04/16 08:19:59 [INFO] ▶ Server listening on port 9279
2021/04/16 08:19:59 [INFO] ▶ Analyzing e7f151c62f076c04e8461fd943c95f19f8dc206f17d5a21f029a9ca99c3ab0ad
2021/04/16 08:19:59 [INFO] ▶ Analyzing c1e91afbb627be720b16cf9d410641462361c183720722438268bfaa86f6235a
2021/04/16 08:19:59 [INFO] ▶ Analyzing 9ead78cffc29e9fe4af4565a6d143d5e29f538d16151266af7a263fcc861e41e
2021/04/16 08:19:59 [INFO] ▶ Analyzing 73eda56f560dd23943dfa0b9b5fcb5b67edd79aa48e240da4b7704436ad58a96
2021/04/16 08:19:59 [INFO] ▶ Analyzing 0cb9a39cc36eb2a00eb9cd5ae26dff9f6d80fd0b3ab40f28552136d4ce7724ce
2021/04/16 08:19:59 [INFO] ▶ Analyzing 1537da0bda192c9840ae1fe9fde034dc0c0bf8c9cf75fbdb17b4572d8446afe4
2021/04/16 08:19:59 [INFO] ▶ Analyzing 9c2003ac84e493d76cdfdf453764f0614b81ea0c00879584e2568d7e2d25b303
2021/04/16 08:19:59 [INFO] ▶ Analyzing 2408b6ea815c3f5e9ca6b4f6a81b2111a2e0e71c6fda06ba98ac21e466f76908
2021/04/16 08:19:59 [WARN] ▶ Image [grafana/grafana:7.5.4] contains 1 total vulnerabilities
2021/04/16 08:19:59 [ERRO] ▶ Image [grafana/grafana:7.5.4] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress grafana/grafana:7.5.4
2021-04-16T08:20:03.968Z        INFO    Need to update DB
2021-04-16T08:20:03.968Z        INFO    Downloading DB...
2021-04-16T08:20:09.796Z        INFO    Detecting Alpine vulnerabilities...
2021-04-16T08:20:09.797Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

grafana/grafana:7.5.4 (alpine 3.12.6)
=====================================
Total: 1 (UNKNOWN: 1, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
