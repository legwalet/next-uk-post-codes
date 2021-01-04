FROM ubuntu:latest

# Setting working directory. All the path will be relative to WORKDIR
WORKDIR /usr/src/app

# Update npm
RUN npm update

# Installing dependencies
COPY package*.json ./
RUN npm install

# Copying source files
COPY . .

# Building app
RUN npm run build

# Running the app
CMD [ "npm", "start" ]
