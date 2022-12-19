FROM node:12.16.1-alpine3.9

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies using yarn
COPY package.json yarn.lock ./
RUN yarn install

# Bundle app source
COPY . .

# Expose port 8080
EXPOSE 8080

# Run the app

CMD [ "yarn", "start" ]
