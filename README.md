# docker-drone-build-trigger

![](https://github.com/eyenx/docker-drone-build-trigger/workflows/build%20image/badge.svg)

This docker image sole purpose is to trigger a drone build

## Configuration via environment variables:

```
DRONE_SERVER=https://mydroneserver.com
DRONE_TOKEN=INSERTHEREYOURTOKEN
DRONE_REPO=myusername/myrepo
DRONE_ARGS="-p myparam=true -p otherparam=else --commit=xxxx" # optional
```
