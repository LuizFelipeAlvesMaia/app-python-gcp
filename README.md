# app-python-gcp
Aqui neste projeto, a partir da aplicação Python, foi criado um manifesto Docker File pra ser criado uma imagem Docker na GCP e colocar ela operacional

# Passos para fazer o envio da imagem


### Primeiro, ao usar o terminal da GCP, utilize os comandos abaixo para seguir com a criação da imagem.

- Zip e Upload app.zip para o Cloud Shell
- Unzip app.zip
- Crie (Build) a Docker image

```bash
docker build -t app:1.0 .
docker image ls
```

### Teste a imagem localmente no Cloud Shell

```bash
docker container run --name app -p 5000:5000 app:1.0
docker container ls 
docker container ls --all
docker container start app
docker container stop app
```

### Adicione tag a imagem

```bash
docker tag app:1.0 us.gcr.io/<ID_PROJETO>/app
```

### Suba (Push) a imagem para Container Registry na Google Cloud

```bash
docker push us.gcr.io/<ID_PROJETO>/app
```

###Faça o deploy da aplicação em container no Google Cloud Run usando a imagem criada# Passos

