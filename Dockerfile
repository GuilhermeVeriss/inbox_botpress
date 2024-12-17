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

# Expõe a porta padrão do Vite (5173)
EXPOSE 5173

# Comando para iniciar o servidor Vite com --host
CMD ["npm", "run", "dev", "--", "--host"]
