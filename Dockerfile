# Utilisez l'image Node.js
FROM node:14

# Définissez le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copiez le fichier package.json et package-lock.json
COPY package*.json ./

# Installez les dépendances
RUN npm install

# Copiez le reste de votre application
COPY . .

# Exposez le port sur lequel votre application écoute
EXPOSE 8080

# Commande pour démarrer votre application
CMD ["node", "app.js"]
