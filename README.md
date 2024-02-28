# Projeto: Castrastro de Usuários - NodeJS/Express
### 1 - O que é?
Página web para cadastro de usuários desenvolvido em NodeJS/Express com intuito educacional.

### 2 - Objetivo
O principal objetivo desse projeto é sua utilização em containers.

### 3 - Como executar
Para cumprir o objetivo e executar esse projeto

#### I - Tecnologias necessárias
- Git para clonagem do repositório;
- Docker para a criação e execução dos Contêineres.

#### II - Comandos para criar o ambiente
- Faça a clonagem deste projeto
```git
git clone https://github.com/JhoneRodrigues/user-registration
```  
- Dentro do repositório, faça o Build do mongodb.dockerfile para gerar a imagem do DB;
```cmd
docker build -t meu-mongodb -f mongodb.dockerfile .
```
- Execute o Build do mongo-express.dockerfile
```cmd
docker build -t meu-mongo-express -f mongo-express.dockerfile .
```
- Faça o Build da aplicação Node, o arquivo app.dockerfile
```cmd
docker build -t meu-app-node -f app.dockerfile .
```
- Crie a rede para ter a comunicação entre os contêineres
```cmd
docker network create --driver bridge rede-cadastros
```
- Crie/execute o contêiner do MongoDB
```cmd
docker run -dit --name meu-mongodb --network rede-cadastros --mount source=mongo-volume,target=/data/db meu-mongodb
```
- Crie/execute o contêiner do Mongo-express
```cmd
docker run -dit --name mongo-express -p 8081:8081 --network rede-cadastros meu-mongo-express
```
- Crie/execute o contêiner da aplicação
```cmd
docker run -dit --name app -p 3000:3000 --network rede-cadastros meu-app-node
```
#### III - Seu ambiente de produção está pronto
- Acesse http://localhost:3000/ para entrar na aplicação e testar o cadastro de usúario;
- Acesse http://localhost:8081/ para entrar no Docker-express e vizualizar os dados.

## <b> Vamos nos conectar..!</b><img src="https://github.com/0xAbdulKhalid/0xAbdulKhalid/raw/main/assets/mdImages/handshake.gif" width ="80">
<a href="https://www.linkedin.com/in/jhonerodrigues/" target="_blank">
<img src="https://img.shields.io/badge/linkedin:  jhone rodrigues-%2300acee.svg?color=405DE6&style=for-the-badge&logo=linkedin&logoColor=white" alt=linkedin style="margin-bottom: 5px;"/>
</a>
