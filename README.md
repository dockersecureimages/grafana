# Grafana

Grafana, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/grafana:6.6.2-alpine-3.11.3
2020/02/20 20:30:37 [INFO] ▶ Start clair-scanner
2020/02/20 20:30:39 [INFO] ▶ Server listening on port 9279
2020/02/20 20:30:39 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/02/20 20:30:40 [INFO] ▶ Analyzing 00ac8ac3aa5a6bacdd549416822f573b93ba316a4f22e8dad53abbe4eabf6bb9
2020/02/20 20:30:40 [INFO] ▶ Analyzing 17623f16e52a831f400938bea0427939b3e809fda6f789619a7ab138fc35c987
2020/02/20 20:30:40 [INFO] ▶ Analyzing 159821f192a5e0f0f1749ef2fe6e2269a71c85e733dec10cda926321a563f0c9
2020/02/20 20:30:40 [INFO] ▶ Analyzing 327d8e58e0d44baa43e22e237ff6abec38b5427d87b4939362c6681b5f6f09d4
2020/02/20 20:30:41 [INFO] ▶ Image [secureimages/grafana:6.6.2-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.4 --no-progress secureimages/grafana:6.6.2-alpine-3.11.3
2020-02-20T18:30:50.774Z        INFO    Need to update DB
2020-02-20T18:30:50.774Z        INFO    Downloading DB...
2020-02-20T18:30:55.070Z        INFO    Reopening DB...
2020-02-20T18:30:58.198Z        INFO    Detecting Alpine vulnerabilities...

secureimages/grafana:6.6.2-alpine-3.11.3 (alpine 3.11.3)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/grafana/grafana](https://hub.docker.com/r/grafana/grafana)
```
docker pull grafana/grafana:6.6.2
```

Security scanning using Clair
```
clair-scanner grafana/grafana:6.6.2
2020/02/20 20:31:04 [INFO] ▶ Start clair-scanner
2020/02/20 20:31:08 [INFO] ▶ Server listening on port 9279
2020/02/20 20:31:08 [INFO] ▶ Analyzing 9b18a7418f4cfa9967437868cacf628a9d4c9791bff790888f5a33ef7830c46a
2020/02/20 20:31:08 [INFO] ▶ Analyzing 6d2a83f2e674a2fbd56505c2258405387d00651335fe4c49351126ecb5264c55
2020/02/20 20:31:08 [INFO] ▶ Analyzing 20c8cc0fc05a0b87fbb44f4f6778afeb0ceab7e275c22496d14df6569b68a2c0
2020/02/20 20:31:08 [INFO] ▶ Analyzing 3ab708fe6c59de15d01a58c7861719f1a317ec394a990def9463688236d71dec
2020/02/20 20:31:08 [INFO] ▶ Analyzing 7d6945fac429b74a5b051430e87b4d0af12ed8793e797f0b34102135c093ebf1
2020/02/20 20:31:08 [INFO] ▶ Analyzing de4a60c7e1a1ae9c5678e7b1fb7e4b831c2eb937be4b1605b2c336ed6f212223
2020/02/20 20:31:08 [INFO] ▶ Analyzing ec227c8885871979dd860344dc8a216e9c6f758a5c717b8268ceb4b9eeecf71c
2020/02/20 20:31:08 [INFO] ▶ Analyzing 7e77cf0cff8fd02d47fb5ffb7535da980eb5a4d121399f4e44d572b758d580ab
2020/02/20 20:31:08 [INFO] ▶ Image [grafana/grafana:6.6.2] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.4 --no-progress grafana/grafana:6.6.2
2020-02-20T18:31:16.987Z        INFO    Need to update DB
2020-02-20T18:31:16.987Z        INFO    Downloading DB...
2020-02-20T18:31:20.968Z        INFO    Reopening DB...
2020-02-20T18:31:26.210Z        INFO    Detecting Alpine vulnerabilities...

grafana/grafana:6.6.2 (alpine 3.10.4)
=====================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
