#!/bin/bash

# Install kind
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind

# Create a Kind cluster
kind create cluster --name my-cluster
