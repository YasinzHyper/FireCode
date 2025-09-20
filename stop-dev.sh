#!/bin/bash

# FireCode Development Stop Script for Unix/Linux/MacOS

echo "Stopping FireCode development environment..."

# Stop and remove containers
docker-compose down

echo "FireCode development environment stopped."
echo "To remove all data (including database), run: docker-compose down -v"