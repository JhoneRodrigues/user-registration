# Usa a versão 0.54 da imagem mongo-express como base
FROM mongo-express:0.54

# Informa ao Docker que o serviço estará disponível na porta 8081
EXPOSE 8081

# Declaramos uma variavel de argumento para receber o IP, recebendo uma variavel de ambiente do sistema interno
ARG MONGO=$MONGOIP

# Define a variável de ambiente ME_CONFIG_MONGODB_SERVER com o valor da variável MONGO com o IP
ENV ME_CONFIG_MONGODB_SERVER=$MONGO

# Define a variável de ambiente ME_CONFIG_MONGODB_PORT
ENV ME_CONFIG_MONGODB_PORT=27017
