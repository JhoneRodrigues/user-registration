# Usa a versão 0.54 da imagem mongo-express como base
FROM mongo-express:0.54

# Informa ao Docker que o serviço estará disponível na porta 8081
EXPOSE 8081

# Define a variável de ambiente ME_CONFIG_MONGODB_SERVER responsavel por se conectar com o MongoDB
ENV ME_CONFIG_MONGODB_SERVER=meu-mongodb

# Define a variável de ambiente ME_CONFIG_MONGODB_PORT
ENV ME_CONFIG_MONGODB_PORT=27017
