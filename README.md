# CI/CD Pipeline com Observabilidade
[![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-v2.0.0-blue?logo=githubactions&labelColor=white)](https://github.com/features/actions)
[![Kubernetes](https://img.shields.io/badge/Kubernetes-v1.21.0-blue?logo=kubernetes&labelColor=white)](https://kubernetes.io/) 
[![Docker](https://img.shields.io/badge/Docker-v20.10.7-blue?logo=docker&labelColor=white)](https://www.docker.com/) 
[![Grafana](https://img.shields.io/badge/Grafana-v8.0.0-orange?logo=grafana&labelColor=white)](https://grafana.com/) 
[![Prometheus](https://img.shields.io/badge/Prometheus-v2.28.0-red?style=flat&logo=prometheus&labelColor=white)](https://prometheus.io/) 
[![Flask](https://img.shields.io/badge/Flask-v3.0.3-blue?logo=flask&logoColor=black&labelColor=white)](https://flask.palletsprojects.com/) 



Este repositório contém uma aplicação Flask com um pipeline CI/CD implementado com GitHub Actions, Docker, Kubernetes (EKS) e um sistema de monitoramento usando Grafana e Prometheus. O projeto foi criado para automatizar o deploy na AWS e oferecer monitoramento em tempo real.<p>
![grafana-aws-actions-prometheus-kubernetes](images/Background.png)

## Estrutura do Projeto

- **app/**: Código fonte da aplicação Flask.
- **infra/**: Scripts de infraestrutura para configurar o EKS, Prometheus, e Grafana.
- **.github/workflows/**: Workflows do GitHub Actions para CI/CD.
- **images/**: Prints e imagens para documentação.

## Funcionalidades

1. **CI/CD**: Automatização do build, push de imagem Docker, e deploy em EKS.
2. **Monitoramento**: Configuração de métricas no Grafana, alimentadas pelo Prometheus.
3. **Deploy**: Automatização de infraestrutura com AWS e Kubernetes.

## Pré-requisitos

- Docker e Docker Hub.
- AWS CLI configurado com as credenciais apropriadas.
- Kubernetes CLI (kubectl) e eksctl.
- GitHub Secrets configurados (AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, DOCKER_USERNAME, DOCKER_PASSWORD).

## Configuração

1. **Clone o Repositório**
   ```bash
   git clone https://github.com/leoferamos/ci-cd-pipeline-observability.git
   cd ci-cd-pipeline-observability
