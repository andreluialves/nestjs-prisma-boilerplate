# Use uma imagem base oficial do Node.js
FROM node:18-alpine

# Defina o diretório de trabalho
WORKDIR /app

# Copie o arquivo package.json e package-lock.json
COPY package*.json ./

# Instale as dependências
RUN npm install

# Copie todo o código da aplicação para o container
COPY . .

# Gere o Prisma Client
RUN npx prisma generate

# Compile o projeto TypeScript para JavaScript
RUN npm run build

# Exponha a porta que o NestJS irá utilizar
EXPOSE 3000

# Comando para rodar a aplicação
CMD ["npm", "run", "start:prod"]
