# Versao base utilizada: node alpine, mais leve que a padrão
FROM node:20.3.0-alpine3.18

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Declaramos uma variavel de argumento, recebendo uma variavel de ambiente do sistema interno
ARG MONGO=$MONGOIP

# Define uma variável de ambiente MONGODB com o valor da variável de argumento MONGO
ENV MONGODB=$MONGO

# Informa ao Docker que a aplicação dentro do contêiner estará ouvindo na porta 3000
EXPOSE 3000

# Copia os arquivos package-lock.json e package.json do diretório de contexto para o diretório de trabalho no contêiner, tendo todas as dependencias no conteiner
COPY package-lock.json .
COPY package.json .

# Executa o comando npm install para instalar as dependências do Node.js
RUN npm install

# Copia todos os arquivos do diretório para o diretório de trabalho no contêiner
COPY . .

# Comando padrão a ser executado quando o contêiner for iniciado, que iniciara a aplicação Node.js
CMD [ "node", "app.js" ]
