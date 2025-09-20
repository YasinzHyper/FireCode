![TypeScript](https://img.shields.io/badge/typescript-%23007ACC.svg?style=for-the-badge&logo=typescript&logoColor=white)
![TypeScript React](https://img.shields.io/badge/typescript%20react-%2320232a.svg?style=for-the-badge&logo=react&logoColor=%2361DAFB)
![MongoDB](https://img.shields.io/badge/mongodb-%234ea94b.svg?style=for-the-badge&logo=mongodb&logoColor=white)
![Mongoose](https://img.shields.io/badge/mongoose-%234ea94b.svg?style=for-the-badge&logo=mongoose&logoColor=white)
![Node.js](https://img.shields.io/badge/node.js-%23339933.svg?style=for-the-badge&logo=node.js&logoColor=white)
![Express.js](https://img.shields.io/badge/express.js-%23404d59.svg?style=for-the-badge)
![CSS3](https://img.shields.io/badge/css3-%231572B6.svg?style=for-the-badge&logo=css3&logoColor=white)
![Tailwind CSS](https://img.shields.io/badge/tailwind%20css-%2338B2AC.svg?style=for-the-badge&logo=tailwind-css&logoColor=white)

# FireCode

FireCode is a clone of LeetCode, a platform for developers to practice coding problems and improve their skills. This project was created as a full-stack project _(my first full-stack project)_ using Express, MongoDB, Mongoose, TypeScript,TypeScript React (TSX), CSS3, and Tailwind CSS.

# Demo

You can see the live demo of website at https://fire-code.vercel.app.

# Installation

## 🐳 Quick Start with Docker (Recommended)

The easiest way to get FireCode running locally is using Docker. This method requires no manual dependency installation or database setup.

### Prerequisites
- [Docker Desktop](https://www.docker.com/products/docker-desktop/) installed and running

### Setup Steps

1. **Clone the repository:**
```bash
git clone https://github.com/ManiGhazaee/FireCode.git
cd FireCode
```

2. **Run the application:**

**On Windows:**
```bash
# Double-click start-dev.bat or run in PowerShell:
.\start-dev.bat
```

**On macOS/Linux:**
```bash
# Make script executable and run:
chmod +x start-dev.sh
./start-dev.sh
```

**Or manually with Docker Compose:**
```bash
docker-compose up --build
```

3. **Access the application:**
- 🌐 **Frontend**: [http://localhost:3000](http://localhost:3000)
- 🔧 **Backend API**: [http://localhost:80](http://localhost:80)
- 🍃 **MongoDB**: `localhost:27017`

4. **Stop the application:**
```bash
# Use the stop scripts
.\stop-dev.bat    # Windows
./stop-dev.sh     # macOS/Linux

# Or manually
docker-compose down
```

That's it! The Docker setup includes:
- ✅ MongoDB database with persistent storage
- ✅ Backend server with hot reload
- ✅ Frontend with live reload
- ✅ All dependencies automatically installed
- ✅ Cross-platform compatibility

## 📦 Manual Installation (Alternative)

If you prefer to run without Docker:

### 1. Clone the repository and install dependencies:

```bash
git clone https://github.com/ManiGhazaee/FireCode.git
cd FireCode/server
npm install
cd ../client
npm install
```

### 2. Configure the MongoDB Database and JWT Secret:

Before starting the server, copy the environment template and configure it:

```bash
# In the server directory
cp .env.example .env
```

Edit `server/.env` file and set:

-   `MONGODB_URI`: Set this variable to your MongoDB connection string.
-   `ACCESS_TOKEN_SECRET`: Set this variable to a secret key for JWT access tokens.

### 3. Configure the client environment:

```bash
# In the client directory
cp .env.example .env
```

### 4. Start the client in the `client` directory:

```bash
npm start
```

### 5. Configure the API URL:

To use your own API, open the `client/src/App.tsx` file and find the `API_URL` constant. Update its value to match the URL of your deployed server (`http://localhost:80`).

### 6. Start the server in the `server` directory:

```bash
npm start
```

## 🔧 Docker Troubleshooting

### Common Issues:

**Port already in use:**
```bash
# Stop any running containers
docker-compose down

# Check what's using the ports
netstat -tulpn | grep :3000    # Linux/macOS
netstat -ano | findstr :3000   # Windows
```

**Permission issues on macOS/Linux:**
```bash
# Make scripts executable
chmod +x start-dev.sh stop-dev.sh
```

**Database data persistence:**
```bash
# To reset the database completely
docker-compose down -v
docker-compose up --build
```

**View logs:**
```bash
# View logs for all services
docker-compose logs

# View logs for specific service
docker-compose logs server
docker-compose logs client
docker-compose logs mongodb
```

**Health Check:**
```bash
# Run health check script
.\health-check.bat    # Windows
./health-check.sh     # macOS/Linux
```

# Features

-   User authentication: Users can create an account, log in, and log out, delete account.
-   Coding problems: Users can browse coding problems, submit solutions.
-   User profile: Users can view their profile, including their solved problems and submissions.

# Technologies Used

-   Express: A web framework for Node.js
-   MongoDB: A NoSQL database
-   Mongoose: A MongoDB object modeling tool
-   TypeScript: A typed superset of JavaScript
-   TypeScript React: A JavaScript library for building user interfaces with TypeScript
-   Tailwind CSS: A utility-first CSS framework
-   CSS: A stylesheet language used to describe the presentation of a document written in HTML or XML

# Server Dependencies

-   acorn
-   bad-words
-   bcrypt
-   cors
-   dotenv
-   express
-   jsonwebtoken
-   mongodb
-   mongoose
-   typescript

# Client Dependencies

-   @uiw/codemirror-extensions-langs
-   @uiw/codemirror-theme-tokyo-night
-   @uiw/react-codemirror
-   axios
-   markdown-it
-   react
-   react-dom
-   react-router-dom
-   react-scripts
-   react-type-animation
-   typescript
-   web-vitals

# Contributing

Contributions are welcome! If you find a bug or have a feature request, please create an issue on GitHub. If you would like to contribute code, please fork the repository and create a pull request.

# License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE.md) file for details.

# Acknowledgments

This project was inspired by LeetCode.
Thanks to the creators of Express, MongoDB, Mongoose, TypeScript, and React.
