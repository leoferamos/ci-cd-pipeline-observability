#!/bin/bash

# Aplicando os Manifests
echo "Deploying application to EKS..."
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

echo "Application deployment complete."
