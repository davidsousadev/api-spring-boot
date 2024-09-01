# API RESTFul Spring Boot

## Objetivo

O objetivo deste projeto é aplicar meus conhecimentos em **Java**, **Spring Boot**, **Docker**, e **API RESTFul**, além de realizar o deploy da aplicação. Esta API é desenvolvida para gerenciar usuários e expor endpoints para operações CRUD (Create, Read, Update, Delete).

## Tecnologias

- **Java Spring Boot**
- **Docker**
- **MySQL**

## Ferramentas

- **IDE**: Visual Studio Code (VS Code)
- **Gerenciamento de Dependências**: Maven

## Repositório

O código fonte está disponível no GitHub: [api-spring-boot](https://github.com/davidsousadev/api-spring-boot)

## Deploy

A aplicação está implantada no Render: [https://api-spring-boot.onrender.com/usuarios](https://api-spring-boot.onrender.com/usuarios)

## Banco de Dados

Utiliza o Aiven Cloud para o banco de dados MySQL.

## Configuração do Ambiente

### Pré-requisitos

- **Java 17 ou superior**
- **Docker**
- **Maven**

### Rodar a Aplicação Localmente

1. Clone o repositório:

```sh
     git clone https://github.com/davidsousadev/api-spring-boot.git
```

2. Navegue para o diretório do projeto:

```sh
    cd api-spring-boot
```

3. Crie e configure o .env com as variaveis:

```sh
    touch /src/main/resources/.env
```
4. Coloque suas credencias de banco Mysql no .env:

```sh
    SPRING_DATASOURCE_URL=Sua URL
    SPRING_DATASOURCE_USERNAME=Seu Username
    SPRING_DATASOURCE_PASSWORD=Sua senha
```

5. Compile o projeto usando Maven:

```sh
    mvn clean install
```
6. Execute a aplicação localmente:

```sh
    mvn spring-boot:run
```
7. A aplicação estará disponível em:

```sh
    http://localhost:8080/usuarios
```

### Estrutura do Projeto
- src/main/java/com/example/demo/model: Contém a classe de modelo.
- src/main/java/com/example/demo/controller: Contém um controlador da API.
- src/main/java/com/example/demo/model: Contém a classe de modelo.
- src/main/java/com/example/demo/repository: Contém o repositório JPA.
- src/main/resources: Contém os arquivos de configuração. OBS: O .env deve ser configurado.

## Endpoints

### POST: Criar um novo usuário

- **URL**: `https://api-spring-boot.onrender.com/usuarios`
- **Método**: `POST`
- **Corpo da Requisição**:

  ```json
  {
    "nome": "David",
    "email": "davidk1k3k@gmail.com"
  }
  ```

- **Resposta**:

  ```json
  {
    "id": 1,
    "nome": "David",
    "email": "davidk1k3k@gmail.com"
  }
  ```

  ### GET: Listar todos os usuários

- **URL**: `https://api-spring-boot.onrender.com/usuarios`
- **Método**: `GET`

- **Resposta**:

  ```json
  [
    {
        "id": 1,
        "nome": "David",
        "email": "davidk1k3k@gmail.com"
    }
  ]
  ```

  ### GET: Buscar um usuário pelo ID

- **URL**: `https://api-spring-boot.onrender.com/usuarios/{id}`
- **Método**: `GET`
-
- **Resposta**:

  ```json
  {
    "id": 1,
    "nome": "David",
    "email": "davidk1k3k@gmail.com"
  }
  ```

  ### PUT: Atualizar um usuário existente

- **URL**: `https://api-spring-boot.onrender.com/usuarios/{id}`
- **Método**: `PUT`
- **Corpo da Requisição**:

  ```json
  {
      "nome": "David Sousa",
      "email": "davidk1k3k@gmail.com"
  }
  ```

- **Resposta**:

  ```json
  {
    "id": 1,
    "nome": "David Sousa",
    "email": "davidk1k3k@gmail.com"
  }
  ```

  ### DELETE: Deletar um usuário existente

- **URL**: `https://api-spring-boot.onrender.com/usuarios/{id}`
- **Método**: `DELETE`

- **Resposta**:

  ```json
    204 No Content
  ```

## Contribuições

**Contribuições são bem-vindas! Se você tiver alguma sugestão ou encontrar um problema, sinta-se à vontade para abrir uma issue ou enviar um pull request.**

## Licença
- Este projeto está licenciado sob a [MIT License](LICENSE).

