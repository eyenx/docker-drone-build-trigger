#!/bin/sh

# checks

test -z $DRONE_TOKEN && echo "Please define a \$DRONE_TOKEN" && exit 1
test -z $DRONE_SERVER && echo "Please define a \$DRONE_SERVER (a.e https://myserver)" && exit 1 
test -z $DRONE_REPO && echo "Please define a \$DRONE_REPO (a.e. myuser/myrepo)" && exit 1

# get last build

LAST_BUILD=$(drone build last $DRONE_REPO|grep Number | cut -d: -f2)


# restart build

drone build restart $DRONE_REPO $LAST_BUILD $DRONE_ARGS
