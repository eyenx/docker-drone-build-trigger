#!/bin/sh

# checks

test -z $DRONE_TOKEN && echo "Please define a \$DRONE_TOKEN" && exit 1
test -z $DRONE_SERVER && echo "Please define a \$DRONE_SERVER (a.e https://myserver)" && exit 1 
test -z $DRONE_REPO && echo "Please define a \$DRONE_REPO (a.e. myuser/myrepo)" && exit 1
# get latest build COMMIT_SHA if none given
test -z $COMMIT_SHA && COMMIT_SHA=$(drone build info --format "{{ .After }}" $DRONE_REPO)
# create build

env
drone build create $DRONE_ARGS --commit $COMMIT_SHA $DRONE_REPO 
