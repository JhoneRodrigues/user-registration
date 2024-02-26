# O MongoDB não possui uma versão no Alpine, por isso, usaremos o Alpine como imagem base e em seguida somente iremos instalar o DB, tornando o contêiner leve
FROM alpine:3.9

# Instala o MongoDB utilizando o gerenciador de pacotes apk
RUN apk add --no-cache mongodb

# Informa ao Docker que o serviço estará disponível na porta 27017
EXPOSE 27017

# Define um volume para persistir os dados do MongoDB
VOLUME /data/db

# Comando padrão a ser executado quando o contêiner for iniciado, iniciando o servidor mongod
CMD ["mongod", "--bind_ip", "0.0.0.0"]