#!/bin/bash

SCRIPTDIR="$(dirname "$(realpath "$0")")"

kubectl apply -f "${SCRIPTDIR}/../pipelines/config"

