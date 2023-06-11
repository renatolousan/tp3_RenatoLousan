# Defina qual distro do linux vc quer usar
FROM ubuntu

# Instale as dependencias do SISTEMA OPERACIONAL
# Exemplo de como seria no ubuntu: RUN apt update && apt install -y python3 python3-pip libpq-dev

RUN apt update && apt install -y python3 python3-pip libpq-dev
WORKDIR /app
COPY . /app

# Sua imagem deve ter o python 3.8+ instalado e o pip
RUN pip install -r requirements.txt

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root"]