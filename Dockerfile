# Defina qual distro do linux vc quer usar
FROM <linux>

WORKDIR /app

# Sua imagem deve ter o python 3.8+ instalado e o pip
RUN pip install -r requirements.txt