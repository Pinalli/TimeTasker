# Use a imagem oficial do Node.js como base
FROM node:latest

# Crie e defina o diret�rio de trabalho no container
WORKDIR /usr/src/app

# Copie o arquivo package.json e package-lock.json para o diret�rio de trabalho
COPY timetasker/package*.json ./

# Instale as depend�ncias do projeto
RUN npm install

# Copie o restante do c�digo do cliente para o diret�rio de trabalho
COPY timetasker/ .

# Exponha a porta que o aplicativo usa (geralmente a 3000 para aplicativos React)
EXPOSE 3000

# Comando para iniciar o aplicativo
CMD ["npm", "start"]
