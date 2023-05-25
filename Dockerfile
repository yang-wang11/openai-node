# Use the official Node.js 10 image as the base
FROM node:14

WORKDIR /app/

COPY package*.json app/

RUN npm install

COPY . /app

EXPOSE 8080

# Run the application
CMD [ "npm", "run", "dev" ]
