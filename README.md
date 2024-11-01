# CI/CD Pipeline com Observabilidade
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
