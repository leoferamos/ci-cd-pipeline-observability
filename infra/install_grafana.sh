#!/bin/bash

# Instalação do Prometheus e Grafana
echo "Installing Prometheus and Grafana..."
kubectl apply -f https://raw.githubusercontent.com/prometheus-operator/prometheus-operator/main/bundle.yaml
 
echo "Prometheus and Grafana installation complete."
