#!/bin/bash

SCRIPTDIR="$(dirname "$(realpath "$0")")"

if ! kubectl get secret tekton-dockerhub-credentials ; then
  echo "Please setup a new secret named tekton-dockerhub-credentials"
  exit 1
fi

echo "Creating service account linked to the credentials"
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: ServiceAccount
metadata:
  name: tekton
secrets:
  - name: tekton-dockerhub-credentials
EOF

echo "Installing tekton pipelines and dashboard"
kubectl apply -f "${SCRIPTDI}/../pipelines-release.yaml"
kubectl apply -f "${SCRIPTDI}/../dashboard-release.yaml"

echo "Installing tasks"
tkn hub install task git-clone
tkn hub install task buildpacks
