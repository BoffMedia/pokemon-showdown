# # Use a Node.js base image
# FROM node:21-alpine3.18

# # Set working directory
# WORKDIR /app

# # Copy package.json and package-lock.json
# COPY package*.json ./

# # Copy node_modules directory from local machine
# COPY node_modules ./node_modules

# # Copy necessary files and directories
# COPY dist ./dist
# COPY server ./server
# COPY config ./config

# # Expose the port the app runs on
# EXPOSE 8000

# # Command to run the server
# CMD ["node", "./dist/server/index.js"]
# Use a Node.js base image
FROM node:21-alpine3.18

# Set working directory
WORKDIR /app

# Copy the entire project directory into the Docker image
COPY . .

# Install dependencies
RUN npm install

# Expose the port the app runs on
EXPOSE 8000

# Command to run the server
CMD ["node", "./dist/server/index.js"]
