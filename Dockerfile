# Base Image
FROM node:22-alpine

# Working directory
WORKDIR /app

# Copy dependency files
COPY package*.json ./

# Install dependencies
RUN npm ci --omit=dev

# Copy application
COPY . .

# Application port
EXPOSE 3000

# Start application
CMD ["npm", "start"]