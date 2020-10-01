
# docker-drone-build-trigger

![](https://github.com/eyenx/docker-drone-build-trigger/workflows/Release%20Container%20Image/badge.svg)
[![](https://images.microbadger.com/badges/image/eyenx/drone-build-trigger.svg)](https://microbadger.com/images/eyenx/drone-build-trigger "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/eyenx/drone-build-trigger.svg)](https://microbadger.com/images/eyenx/drone-build-trigger "Get your own version badge on microbadger.com")

This docker image sole purpose is to trigger a drone build

## Configuration via environment variables:

```
DRONE_SERVER=https://mydroneserver.com
DRONE_TOKEN=INSERTHEREYOURTOKEN
DRONE_REPO=myusername/myrepo
DRONE_ARGS="-p myparam=true -p otherparam=else" # optional
```
