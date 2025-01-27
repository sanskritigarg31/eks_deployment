# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /health-app/appointment-service

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Expose port 3001
EXPOSE 3001

# Start the service
CMD ["npm", "start"]

