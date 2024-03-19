# Use an official Node.js runtime as the base image
FROM node:18

# Set the working directory in the Docker image
WORKDIR /usr/src/app

# Copy package.json and package-lock.json into the Docker image
COPY package*.json ./

# Install the application's dependencies in the Docker image
RUN npm install

# Copy the rest of the application's code into the Docker image
COPY . .

# Expose port 8000 in the Docker image
# This is the port that your application uses (change it if your application uses a different port)
EXPOSE 8000

# Define the command that should be run when a container is started from the Docker image
CMD [ "npm", "start" ]