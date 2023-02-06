# Aqui definimos qual será a imagem que o Docker vai usar para o conteiner, aui declaramos que a imgem vai ser a disponiivel para o Python 3
FROM python:3

# Aqui copiamos o requirimente.txt para a pasta dentro do diretorio do OS do conteiner
COPY ./requirements.txt /app/requirements.txt

#Aqui estamos definindo o diiretorio de trabalho do nosso conteiner
WORKDIR /app

# Vamos executar este comando no nosso cmd do conteiner, para instalar as libs
RUN pip install --no-cache-dir -r requirements.txt

#Vamos copiar todos os arquivos do diretorio atual para a imagem do Docker
COPY . /app

# O ENTRYPOINT é onde conseguimos startar nossa aplicação dentro do conteiner
ENTRYPOINT [ "python" ]


#Aqui vamos passar qual o arquivo principal que deve ser upado ao inicializar o conteiner
CMD [ "app.py" ]
