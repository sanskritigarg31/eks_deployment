# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /health-app/patient-service

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy all files
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the service
CMD ["npm", "start"]

