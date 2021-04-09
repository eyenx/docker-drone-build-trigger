#!/bin/sh

# checks

test -z $DRONE_TOKEN && echo "Please define a \$DRONE_TOKEN" && exit 1
test -z $DRONE_SERVER && echo "Please define a \$DRONE_SERVER (a.e https://myserver)" && exit 1 
test -z $DRONE_REPO && echo "Please define a \$DRONE_REPO (a.e. myuser/myrepo)" && exit 1

# create build

drone build create $DRONE_ARGS $DRONE_REPO &>/dev/null && echo "build started, bye!" # do not output sensitive information
