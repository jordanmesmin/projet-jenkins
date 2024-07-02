# Dockerfile
FROM node:14
# Create app directory
WORKDIR /usr/src/app

# Copiez le fichier package.json et package-lock.json
COPY package*.json ./

# Installez les dépendances
RUN npm install
# Bundle app source
COPY . .
EXPOSE 3000
CMD [ "node", "app.js" ]
