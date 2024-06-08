FROM node:14

WORKDIR /usr/src/app

# Copy application dependency manifests to the container image.
COPY package*.json ./

RUN npm install

# Copy local code to the container image.
COPY . .

EXPOSE 3000

CMD [ "node", "app.js" ]
