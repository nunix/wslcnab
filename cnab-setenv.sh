#!/bin/sh

### PORTER VARIABLES ###
export DISTRO_IMAGE=alpine
export DISTRO_NAME=wsldemo
export DISTRO_PATH=/github/${DISTRO_NAME}
export DISTRO_SOURCE=/github/${DISTRO_NAME}.tar
export PORTER_DEP=/github/cnabwslbuilder/porter.yaml
export PORTER_FILE=https://raw.githubusercontent.com/nunix/wslcnab/master/porter.yaml
export DOCKER_SOURCE=docker
export DOCKER_APP_SOURCE="/usr/bin/docker-app"
export WSL_SOURCE=wsl.exe

### CALL PORTER ###
# porter run --action $@ --file ./porter.yaml --debug
porter run --action $@ --file $PORTER_FILE --debug
