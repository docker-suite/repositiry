# ![](https://github.com/docker-suite/artwork/raw/master/logo/png/logo_32.png) repository
[![Build Status](http://jenkins.hexocube.fr/job/docker-suite/job/repository/badge/icon?color=green&style=flat-square)](http://jenkins.hexocube.fr/job/docker-suite/job/repository/)
[![License: MIT](https://img.shields.io/badge/License-MIT-brightgreen.svg?style=flat-square)](https://opensource.org/licenses/MIT)

[Alpine][alpine] repository for [docker-suite (dsuite)][docker-suite] images.


## ![](https://github.com/docker-suite/artwork/raw/master/various/pin/png/pin_16.png) Quick usage

On Alpine Linux add [docker-suite (dsuite)][docker-suite] repository and make it trusted:

```
    apk add --no-cache curl ca-certificates \
    && curl -o /etc/apk/keys/docker-suite.rsa.pub https://docker-suite.github.io/repository/docker-suite.rsa.pub \
    && echo "https://docker-suite.github.io/repository/v3.10" >> /etc/apk/repositories
```

[alpine]: http://alpinelinux.org/
[docker-suite]: https://github.com/docker-suite/
