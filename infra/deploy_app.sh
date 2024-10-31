#!/bin/bash

# Aplicando os Manifests
echo "Deploying application to EKS..."
kubectl apply -f infra/deployment.yaml
kubectl apply -f infra/service.yaml

echo "Application deployment complete."
