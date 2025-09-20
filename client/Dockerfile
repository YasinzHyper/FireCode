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

# Expose port 3000 (default for React development server)
EXPOSE 3000

# Start the React development server
CMD ["npm", "start"]