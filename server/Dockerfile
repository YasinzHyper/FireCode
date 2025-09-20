# Use Node.js 18 LTS (Alpine for smaller image size)
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 80 (as mentioned in README)
EXPOSE 80

# For development mode - use ts-node to run TypeScript directly
# Install ts-node globally for development
RUN npm install -g ts-node nodemon

# Start the application in development mode with hot reload
CMD ["npx", "nodemon", "--exec", "ts-node", "server.ts"]