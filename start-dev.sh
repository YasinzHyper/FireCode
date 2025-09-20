#!/bin/bash

# FireCode Development Setup Script for Unix/Linux/MacOS

echo "🔥 Setting up FireCode development environment..."

# Check if Docker and Docker Compose are installed
if ! command -v docker &> /dev/null; then
    echo "❌ Docker is not installed. Please install Docker first."
    exit 1
fi

if ! command -v docker-compose &> /dev/null; then
    echo "❌ Docker Compose is not installed. Please install Docker Compose first."
    exit 1
fi

# Copy environment files if they don't exist
echo "📋 Setting up environment files..."
if [ ! -f server/.env ]; then
    cp server/.env.example server/.env
    echo "✅ Created server/.env from example"
fi

if [ ! -f client/.env ]; then
    cp client/.env.example client/.env
    echo "✅ Created client/.env from example"
fi

# Build and start the services
echo "🚀 Building and starting Docker containers..."
docker-compose up --build

echo "🎉 FireCode is now running!"
echo "📱 Frontend: http://localhost:3000"
echo "🔧 Backend API: http://localhost:80"
echo "🍃 MongoDB: localhost:27017"
echo ""
echo "To stop the services, press Ctrl+C or run 'docker-compose down'"