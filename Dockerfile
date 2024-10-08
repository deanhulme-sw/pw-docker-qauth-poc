# Base image
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

RUN apk --no-cache add curl jq bash bind-tools

# Install app dependencies
RUN npm install

# Copy rest files 
COPY . .