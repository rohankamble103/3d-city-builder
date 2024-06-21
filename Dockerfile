# Use the official Node.js image from the Docker Hub
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install project dependencies
RUN npm install

# Install http-server globally
RUN npm install -g http-server

# Copy the rest of your application code to the container
COPY . .

# Build the project (if you have a build step)
RUN npm run build

# Expose the port that the application will run on
EXPOSE 8111

# Define the command to run your application
CMD ["npm", "start"]

