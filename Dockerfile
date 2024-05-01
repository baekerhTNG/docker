# Use an official Node.js runtime as a parent image
FROM node:20-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
#COPY package*.json ./
# Copy the local source files to the container's working directory
COPY . .

# Install dependencies
RUN npm install

# Build the project (compile TypeScript)
RUN npm run build

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run the app
CMD ["node", "dist/server.js"]
