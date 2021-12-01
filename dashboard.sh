#!/bin/bash

kubectl apply --wait --filename https://github.com/tektoncd/dashboard/releases/latest/download/tekton-dashboard-release.yaml

echo "Dashboard URL: http://localhost:9099"
kubectl --namespace tekton-pipelines port-forward svc/tekton-dashboard 9099:9097
