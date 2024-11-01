# Usar uma imagem base do Python
FROM python:3.9-slim

# Definir o diretório de trabalho dentro do container
WORKDIR /app

# Copiar apenas o arquivo de requisitos primeiro
COPY requirements.txt .

# Instalar as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copiar os arquivos restantes para dentro do container
COPY . .

# Criar um usuário não-root
RUN adduser --disabled-password --gecos '' appuser
USER appuser

# Expor a porta 5000
EXPOSE 5000

# Comando para rodar a aplicação
CMD ["python", "app.py"]
