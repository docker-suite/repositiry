# ![](https://github.com/docker-suite/artwork/raw/master/logo/png/logo_32.png) repository
[![License: MIT](https://img.shields.io/badge/License-MIT-brightgreen.svg?style=flat-square)](https://opensource.org/licenses/MIT)

[Alpine][alpine] package repository for [docker-suite (dsuite)][docker-suite] images.


## ![](https://github.com/docker-suite/artwork/raw/master/various/pin/png/pin_16.png) Quick usage

On Alpine Linux add [docker-suite (dsuite)][docker-suite] repository and make it trusted:

```
    apk add --no-cache curl ca-certificates \
    && curl -o /etc/apk/keys/docker-suite.rsa.pub https://dl.bintray.com/docker-suite/alpine/docker-suite.rsa.pub \
    && echo "https://dl.bintray.com/docker-suite/alpine/v3.11" >> /etc/apk/repositories
```

[alpine]: http://alpinelinux.org/
[docker-suite]: https://github.com/docker-suite/

