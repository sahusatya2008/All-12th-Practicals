-- PhoneBook Database Dump for Practical 15.py
-- This file contains the complete database structure and sample data
-- for the PhoneBook application

-- Create database
CREATE DATABASE IF NOT EXISTS phonebook_db;
USE phonebook_db;

-- Create contacts table
CREATE TABLE IF NOT EXISTS contacts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample data
INSERT INTO contacts (name, phone) VALUES
('John Doe', '123-456-7890'),
('Jane Smith', '098-765-4321'),
('Alice Johnson', '555-123-4567'),
('Bob Wilson', '444-987-6543'),
('Emma Davis', '777-555-1234'),
('Michael Brown', '888-444-5678'),
('Sarah Miller', '999-333-7890'),
('David Garcia', '222-666-1111'),
('Lisa Anderson', '333-777-2222'),
('James Taylor', '666-888-3333');

-- Create indexes for better performance
CREATE INDEX idx_name ON contacts(name);
CREATE INDEX idx_phone ON contacts(phone);
CREATE INDEX idx_created_at ON contacts(created_at);

-- Show table structure
DESCRIBE contacts;

-- Show sample data
SELECT * FROM contacts ORDER BY name;

-- Database dump completed
-- To restore this database, run: mysql -u root -p < phonebook_db_dump.sql