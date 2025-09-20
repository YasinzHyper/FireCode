#!/bin/bash

# FireCode Health Check Script

echo "🏥 Running FireCode Health Check..."

echo "📊 Container Status:"
docker-compose ps

echo ""
echo "🌐 Testing Frontend (React)..."
if curl -f -s http://localhost:3000 > /dev/null; then
    echo "✅ Frontend is responding"
else
    echo "❌ Frontend is not responding"
fi

echo ""
echo "🔧 Testing Backend API..."
if curl -f -s http://localhost:80 > /dev/null; then
    echo "✅ Backend is responding"
else
    echo "❌ Backend is not responding"
fi

echo ""
echo "🍃 Testing MongoDB connection..."
if docker-compose exec -T mongodb mongosh --eval "db.adminCommand('ping')" > /dev/null 2>&1; then
    echo "✅ MongoDB is responding"
else
    echo "❌ MongoDB is not responding"
fi

echo ""
echo "🎉 Health check complete!"