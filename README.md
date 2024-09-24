# Boilerplate NestJS com Prisma e Docker

Este é um boilerplate básico para a criação de aplicações backend utilizando **NestJS**, **Prisma ORM**, **PostgreSQL** e **Docker**. Ele serve como ponto de partida para novos projetos, facilitando o desenvolvimento e a configuração inicial.

## Tecnologias Utilizadas

- **NestJS**: Framework para construir aplicações Node.js escaláveis.
- **Prisma**: ORM moderno para trabalhar com bancos de dados.
- **PostgreSQL**: Banco de dados relacional.
- **Docker**: Containerização para facilitar a execução e distribuição da aplicação.

## Estrutura do Projeto

``` markdown
├── src
│   ├── app.controller.ts       # Controller principal gerado pelo NestJS
│   ├── app.module.ts           # Módulo principal da aplicação
│   ├── app.service.ts          # Service principal gerado pelo NestJS
│   ├── main.ts                 # Ponto de entrada da aplicação
│   ├── app.controller.spec.ts  # Teste unitário para o AppController
│   ├── app.service.spec.ts     # Teste unitário para o AppService
│   └── ...                     # Outros módulos, controllers e services
├── prisma
│   └── schema.prisma           # Esquema do banco de dados Prisma
├── Dockerfile                  # Arquivo de configuração do Docker
├── docker-compose.yml          # Configuração dos serviços Docker
├── package.json                # Dependências e scripts da aplicação
├── nest-cli.json               # Configurações específicas do NestJS CLI
├── tsconfig.build.json         # Configuração TypeScript para build
├── tsconfig.json               # Configuração TypeScript principal
├── .eslintrc.js                # Configuração do ESLint
├── .prettierrc                 # Configuração do Prettier
├── .gitignore                  # Arquivos e diretórios a serem ignorados pelo Git
├── test
│   ├── app.e2e-spec.ts         # Teste end-to-end para a aplicação
│   ├── jest-e2e.json           # Configuração Jest para testes end-to-end
└── README.md                   # Documentação do projeto

```


## Instalação

1. Clone este repositório:

   ```bash
   git clone git@github.com:andreluialves/nestjs-prisma-boilerplate.git
   cd nestjs-prisma-boilerplate

2. Instale as dependências:

```bash
npm install
```

3. Configure o banco de dados no arquivo prisma/schema.prisma de acordo com suas necessidades.

4. Gere o cliente Prisma:

```bash
npx prisma generate
```

## Executando com Docker

1. Certifique-se de ter o Docker e o Docker Compose instalados.

2. Execute o seguinte comando para iniciar os serviços:
``` bash
docker-compose up --build
```

3. A aplicação estará disponível em http://localhost:3000.

## Scripts

`start`: Inicia a aplicação em modo de desenvolvimento.

`build`: Compila o código TypeScript.

`prisma`
: Executa migrações do Prisma.

`test`: Inicia os testes unitários

`test:e2e`: Inicia os testes end-to-end

`test:cov`: Inicia os testes de cobertura


## Contribuições

Sinta-se à vontade para contribuir com melhorias, correções ou novas funcionalidades! Crie um fork deste repositório e envie suas mudanças por meio de pull requests.

## Licença

Este projeto está licenciado sob a MIT License. Veja o arquivo LICENSE para mais detalhes.