#!/bin/bash

# Adicionar repositórios
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update

# Criar o namespace "monitoring"
kubectl create namespace monitoring

# Instalar o Prometheus
echo "Instalando Prometheus..."
helm install prometheus prometheus-community/kube-prometheus-stack --namespace monitoring

# Verificar se o Prometheus foi implantado
echo "Aguardando os pods do Prometheus ficarem prontos..."
kubectl wait --namespace monitoring \
  --for=condition=ready pod \
  -l "app.kubernetes.io/name=kube-prometheus-stack" \
  --timeout=300s

# Instalar o Grafana
echo "Instalando Grafana..."
helm install grafana grafana/grafana --namespace monitoring

# Verificar se o Grafana foi implantado
echo "Aguardando os pods do Grafana ficarem prontos..."
kubectl wait --namespace monitoring \
  --for=condition=ready pod \
  -l "app.kubernetes.io/name=grafana" \
  --timeout=300s

echo "Prometheus e Grafana foram instalados com sucesso."
