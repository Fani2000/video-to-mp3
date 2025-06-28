#!/bin/bash

# MySQL Connection Environment Variables
export MYSQL_HOST="localhost"
export MYSQL_USER="auth"
export MYSQL_PASSWORD=""
export MYSQL_DB="auth"
export MYSQL_PORT="4000"

# JWT Secret for token generation and validation
export JWT_SECRET="your_jwt_secret_key"

# Run the Flask application
echo "Environment variables set successfully!"

# python server.py