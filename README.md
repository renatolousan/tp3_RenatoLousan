# ufam-db-tp3

## Notas do launo para o monitor

Tarsis, não consegui fazer as questões 8 e 9, considere isso na hora de corrigir. Além disso, a falta de comando para subir o postgres no README se deve ao fato de que usei o notebook para rodar os comandos para instalar o Postgres e o SQLite.


## Copiando esse repositorio

Você deve ter uma conta no github, criar é gratis, e ele é essencial para a vida e carreira de você.

Para fazer isso siga esses passos:

<https://user-images.githubusercontent.com/118348/229365938-48d261c8-b569-463c-bc00-462eb218b423.mp4>

Para entender melhor [git e github](https://www.alura.com.br/artigos/o-que-e-git-github).

## Configurando

### Docker

Instalando o [docker desktop (Windows, Linux e Mac)](https://www.docker.com/products/docker-desktop/)

Instalando na linha de comando

[Docker](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04-pt)

### Python e Virtualenv

Você deve configurar uma virtualenv do python para não instalar as bibliotecas no seu python do sistema.

Se seu python é 3.3+

```bash
python -m venv venv
source venv/bin/activate
```

Agora você pode instalar os pacotes do python:

```bash
pip install -r requirements.txt
```

## Rodando o docker

Primeiro, você deve configurar seu dockerfile:

1. Definir qual distro linux vai usar
2. Instalar Python3.8+ e Pip

Agora você pode construir sua imagem:

```bash
docker build . -t tp3
```

Depois que terminar, você pode rodar seu docker assim:

```bash
docker run -p 5433:5432 -v $(pwd)/datadir/:/app/datadir tp3 tp3 <comando para subir o postgres>
```

No jupyter notebook, você pode acessar o postgres na **porta 5433**\

O trabalho pede para testar varios formatos de sistema de arquivo. Para fazer isso, você deve montar tal um diretorio na sua maquina com o sistema de arquivo e passar ele para o docker.

Exemplo: Vou testar o **ext3**, depois de montar a pasta, farei o seguinte:

```bash
docker run -p 5433:5432 -v $(pwd)/datadir_ext3/:/app/datadir <comando para subir o postgres>
```
