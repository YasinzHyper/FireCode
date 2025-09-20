@echo off
REM FireCode Development Stop Script for Windows

echo 🛑 Stopping FireCode development environment...

REM Stop and remove containers
docker-compose down

echo ✅ FireCode development environment stopped.
echo 💡 To remove all data (including database), run: docker-compose down -v
pause