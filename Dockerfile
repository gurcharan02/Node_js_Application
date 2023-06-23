# Base image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy the code into the container
COPY . /app

# Install dependencies
RUN npm install

# Install PM2 globally
RUN npm install -g pm2

# Expose the port your application uses
EXPOSE 3000

# Start the application with PM2
CMD ["pm2-runtime", "start", "index.js", "--name", "my-node-app"]
