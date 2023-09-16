# Kubernetes Cluster Setup and Node.js App Deployment

This repository provides a step-by-step guide and accompanying scripts for setting up a local Kubernetes cluster using Kind, deploying a sample Node.js application using Terraform, and setting up monitoring with Prometheus. Additionally, it covers Dockerizing the Node.js app and pushing it to DockerHub.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Step 1: Set Up a Kind Cluster](#step-1-set-up-a-kind-cluster)
- [Step 2: Deploy the Node.js App using Terraform](#step-2-deploy-the-nodejs-app-using-terraform)
- [Step 3: Dockerize and Push Node.js App to DockerHub](#step-3-dockerize-and-push-nodejs-app-to-dockerhub)
- [Step 4: Create Kubernetes Deployment Manifest](#step-4-create-kubernetes-deployment-manifest)
- [Step 5: Deploy using Terraform](#step-5-deploy-using-terraform)
- [Step 6 : Set Up Monitoring with Prometheus](#step-6-set-up-monitoring-with-prometheus)
- [Step 7: Apply Everything](#step-7-apply-everything)

## Prerequisites

Before starting, make sure you have the following installed:

- [Kind](https://kind.sigs.k8s.io/docs/user/quick-start/)
- [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)
- [Docker](https://docs.docker.com/get-docker/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- [Helm](https://helm.sh/docs/intro/install/)

## Step 1: Set Up a Kind Cluster

Run the provided Bash script to create a Kind cluster:

```bash
chmod +x setup_kind_cluster.sh
./setup_kind_cluster.sh 


##Step 1: Set Up a Kind Cluster
