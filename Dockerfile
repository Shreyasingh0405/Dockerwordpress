# Use the official Node.js image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json into the container
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of the application source code into the container
COPY . .

# Expose the port on which your Node.js application listens
EXPOSE 3002

# Command to run your Node.js application
CMD ["node", "app.js"]
