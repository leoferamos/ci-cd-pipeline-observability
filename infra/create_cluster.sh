#!/bin/bash

# Configurações do Cluster
CLUSTER_NAME="devops-flask-cluster"
REGION="us-east-1"
NODE_TYPE="t3.micro"
NODE_COUNT=2

# Criação do Cluster
echo "Creating EKS Cluster..."
eksctl create cluster \
  --name $CLUSTER_NAME \
  --region $REGION \
  --nodegroup-name standard-workers \
  --node-type $NODE_TYPE \
  --nodes $NODE_COUNT \
  --nodes-min 1 \
  --nodes-max 3 \
  --managed

# Configuração do kubectl
echo "Configuring kubectl for the new cluster..."
aws eks --region $REGION update-kubeconfig --name $CLUSTER_NAME

echo "EKS Cluster setup complete."
