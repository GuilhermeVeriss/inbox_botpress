# Usa a imagem oficial do Node.js como base
FROM node:18-alpine

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o package.json e package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instala as dependências do projeto
RUN npm install

# Copia o restante do código do projeto para dentro do container
COPY . .

# Expõe a porta padrão do React (3000)
EXPOSE 3000

# Comando para iniciar o servidor React
CMD ["npm", "start"]
