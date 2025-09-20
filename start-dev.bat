@echo off
REM FireCode Development Setup Script for Windows

echo Setting up FireCode development environment...

REM Check if Docker is running
docker version >nul 2>&1
if %errorlevel% neq 0 (
    echo Docker is not running or not installed. Please start Docker Desktop.
    pause
    exit /b 1
)

REM Check if Docker Compose is available
docker-compose version >nul 2>&1
if %errorlevel% neq 0 (
    echo Docker Compose is not available. Please make sure Docker Desktop is properly installed.
    pause
    exit /b 1
)

REM Copy environment files if they don't exist
echo Setting up environment files...
if not exist server\.env (
    copy server\.env.example server\.env >nul
    echo Created server\.env from example
)

if not exist client\.env (
    copy client\.env.example client\.env >nul
    echo Created client\.env from example
)

REM Build and start the services
echo Building and starting Docker containers...
docker-compose up --build

echo FireCode is now running!
echo Frontend: http://localhost:3000
echo Backend API: http://localhost:80
echo MongoDB: localhost:27017
echo.
echo To stop the services, press Ctrl+C or run 'docker-compose down'
pause