#!/bin/sh

### PORTER VARIABLES ###
export DISTRO_IMAGE=alpine
export DISTRO_NAME=wsldemo
export DISTRO_PATH=/github/${DISTRO_NAME}
export DISTRO_SOURCE=/github/${DISTRO_NAME}.tar
export PORTER_DEP=/github/cnabwslbuilder/porter.yaml
export DOCKER_SOURCE=docker
export DOCKER_APP_SOURCE="/usr/bin/docker-app"
export WSL_SOURCE=wsl.exe

### CALL PORTER ###
porter run --action $@ --file ./porter.yaml --debug
