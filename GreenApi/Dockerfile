FROM node:boron

# Create an app directory
RUN mkdir -p /usr/src/serverapi
WORKDIR /usr/src/serverapi

# Install app dependencies
COPY package.json /usr/src/serverapi
RUN npm install

# Bundle app source
COPY . /usr/src/serverapi

# Expose the app port
EXPOSE 3000

CMD [ "npm", "start"]
