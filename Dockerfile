FROM python:3.10-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

# Expõe a porta que o Jupyter usa (8888)
EXPOSE 8888

#    --ip=0.0.0.0 -> Permite acesso de fora do contêiner
#    --allow-root -> Necessário porque o Docker roda como root
#    --no-browser -> Não tenta abrir um navegador dentro do contêiner
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]