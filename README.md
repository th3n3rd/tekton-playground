# Tekton Playground

This repository is used as a playground to work with Tekton, a kubernetes native CI/CD framework.


## Requirements

- Setup dockerhub credentials using a kubernetes secret with name `tekton-dockerhub-credentials`, following [this](https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/#log-in-to-docker-hub) guide

- Setup tekton, including a service account for the pipelines and a dashboard
```shell
./tekton/scripts/install.sh
```

## Run the CI Pipeline

In order to run a simple checkout and build pipeline we can issue the following command in the terminal:

```shell
./spring-app/scripts/configure-pipelines.sh
./spring-app/scripts/run-ci-pipeline.sh
```

These will start the pipeline and tail the logs.

## Dashboard

THere is also a nice dashboard that can be exposed locally by executing the following command in the project root:

- Run the dashboard/ui
```shell
./tekton/scripts/serve-dashboard.sh
```

The dashboard will be available on [http://localhost:9099](http://localhost:9099)
