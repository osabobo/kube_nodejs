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

[Run the provided Bash script to create a Kind cluster](kind.sh).

## Step 2: Deploy the Node.js App using Terraform

To deploy the Node.js application, follow these steps:

1. Change to the `node_app` directory:

   ```bash
   cd node_app
   


## Step 3: Dockerize and Push Node.js App to DockerHub
Dockerize the Node.js app and push it to DockerHub:
1. docker build -t your-dockerhub-username/node-app:latest .
2. docker login
3. docker push your-dockerhub-username/node-app:latest


## Step 4: Create Kubernetes Deployment Manifest
Create a Kubernetes deployment manifest in a file named deployment.yaml

## Step 5: Deploy using Terraform
In the same directory as deployment.yaml, create a Terraform configuration (main.tf)

## Step 6 : Set Up Monitoring with Prometheus
Create a Terraform configuration file (e.g., prometheus.tf)

## Step 7: Apply Everything
## Step 5
```bash
   cd deploy
   terraform init
   terraform apply


## Step 6 
1. terraform init
2. terraform apply -target=helm_release.prometheus

Replace your-dockerhub-username with your actual DockerHub username inside the deployment.yaml file.
