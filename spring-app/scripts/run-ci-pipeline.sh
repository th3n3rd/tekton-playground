#!/bin/bash

SCRIPTDIR="$(dirname "$(realpath "$0")")"

kubectl create -f "${SCRIPTDIR}/../pipelines/run/ci-pipeline.yaml"

tkn pipeline logs spring-app-ci --last --follow

