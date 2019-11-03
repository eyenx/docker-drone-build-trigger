
# docker-drone-build-trigger

[![Circle CI](https://circleci.com/gh/eyenx/docker-drone-build-trigger.svg?style=svg)](https://circleci.com/gh/eyenx/docker-drone-build-trigger)

This docker images sole purpose is to trigger a drone build

## Configuration via environment variables:

```
DRONE_SERVER=https://mydroneserver.com
DRONE_TOKEN=INSERTHEREYOURTOKEN
DRONE_REPO=myusername/myrepo
DRONE_ARGS="-p myparam=true -p otherparam=else" # optional
```
