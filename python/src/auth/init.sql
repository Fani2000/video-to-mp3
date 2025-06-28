-- First try to drop the user if it exists
DROP USER IF EXISTS 'auth_user'@'localhost';

-- Create the user
CREATE USER 'auth_user'@'localhost' IDENTIFIED BY 'Auth123';

-- Create database (if it doesn't exist)
CREATE DATABASE IF NOT EXISTS auth;

-- Grant privileges
GRANT ALL PRIVILEGES ON auth.* TO 'auth_user'@'localhost';

-- Select the database
USE auth;

-- Create table (if it doesn't exist)
CREATE TABLE IF NOT EXISTS user (
                                    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
    );

-- Insert data (we can use INSERT IGNORE to prevent errors if row already exists)
INSERT INTO user (email, password) VALUES ('fani@email.com', 'Admin123')
    ON DUPLICATE KEY UPDATE email=email;