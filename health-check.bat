@echo off
REM FireCode Health Check Script for Windows

echo 🏥 Running FireCode Health Check...

echo 📊 Container Status:
docker-compose ps

echo.
echo 🌐 Testing Frontend (React)...
powershell -Command "try { Invoke-WebRequest -Uri http://localhost:3000 -Method Head -TimeoutSec 5 | Out-Null; Write-Host '✅ Frontend is responding' } catch { Write-Host '❌ Frontend is not responding' }"

echo.
echo 🔧 Testing Backend API...
powershell -Command "try { Invoke-WebRequest -Uri http://localhost:80 -Method Head -TimeoutSec 5 | Out-Null; Write-Host '✅ Backend is responding' } catch { Write-Host '❌ Backend is not responding' }"

echo.
echo 🍃 Testing MongoDB connection...
docker-compose exec -T mongodb mongosh --eval "db.adminCommand('ping')" >nul 2>&1
if %errorlevel% equ 0 (
    echo ✅ MongoDB is responding
) else (
    echo ❌ MongoDB is not responding
)

echo.
echo 🎉 Health check complete!
pause