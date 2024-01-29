# Use a imagem oficial do Node.js como base
FROM node:latest

# Crie e defina o diretório de trabalho no container
WORKDIR /usr/src/app

# Copie o arquivo package.json e package-lock.json para o diretório de trabalho
COPY timetasker/package*.json ./

# Instale as dependências do projeto
RUN npm install

# Copie o restante do código do cliente para o diretório de trabalho
COPY timetasker/ .

# Exponha a porta que o aplicativo usa (geralmente a 3000 para aplicativos React)
EXPOSE 3000

# Comando para iniciar o aplicativo
CMD ["npm", "start"]
