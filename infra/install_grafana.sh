#!/bin/bash

# Adicionar repositórios do Helm
echo "Adicionando repositórios do Helm..."
helm repo add grafana https://grafana.github.io/helm-charts
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

# Criar o namespace "monitoring"
echo "Criando o namespace 'monitoring'..."
kubectl create namespace monitoring || echo "Namespace 'monitoring' já existe."

# Instalar Prometheus
echo "Instalando Prometheus..."
helm install prometheus prometheus-community/prometheus --namespace monitoring

# Instalar Grafana
echo "Instalando Grafana..."
helm install grafana grafana/grafana --namespace monitoring

# Verificar se o Prometheus foi implantado
echo "Aguardando os pods do Prometheus ficarem prontos..."
kubectl wait --namespace monitoring \
  --for=condition=ready pod \
  -l "app.kubernetes.io/name=prometheus" \
  --timeout=300s

# Verificar se o Grafana foi implantado
echo "Aguardando os pods do Grafana ficarem prontos..."
kubectl wait --namespace monitoring \
  --for=condition=ready pod \
  -l "app.kubernetes.io/name=grafana" \
  --timeout=300s

# Informar como acessar o Grafana
echo "Grafana instalado com sucesso!"
echo "Para acessar o Grafana, você pode usar o seguinte comando para fazer o port-forward:"
echo "kubectl --namespace monitoring port-forward svc/grafana 3000:80"
echo "Acesse Grafana em http://localhost:3000 com o usuário padrão 'admin' e a senha gerada aleatoriamente."
echo "Você pode obtê-la com o seguinte comando:"
echo "kubectl get secret --namespace monitoring grafana -o jsonpath='{.data.admin-password}' | base64 --decode"

# Informar que o Prometheus foi instalado
echo "Prometheus instalado com sucesso! Acesse o Prometheus em http://localhost:9090"
