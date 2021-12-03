#!/bin/bash

echo "Dashboard URL: http://localhost:9099"
kubectl --namespace tekton-pipelines port-forward svc/tekton-dashboard 9099:9097
