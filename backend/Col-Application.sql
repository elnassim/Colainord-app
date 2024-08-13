-- Create Admins Table
CREATE TABLE admins (
    admin_id INT AUTO_INCREMENT PRIMARY KEY,
    admin_username VARCHAR(255) NOT NULL UNIQUE,
    admin_password_hash VARCHAR(255) NOT NULL
);

-- Create Users Table
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    user_username VARCHAR(255) NOT NULL UNIQUE,
    user_password_hash VARCHAR(255) NOT NULL
);

-- Create Company Information Table
CREATE TABLE company_info (
    info_id INT AUTO_INCREMENT PRIMARY KEY,
    company_name VARCHAR(255) NOT NULL,
    company_logo VARCHAR(255), -- Path or URL to the logo image
    company_description TEXT NOT NULL,
    company_video_url1 VARCHAR(255), -- URL to the first video
    company_video_url2 VARCHAR(255)  -- URL to the second video (optional)
);

-- Create Products Table
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    product_description TEXT,
    product_price DECIMAL(10, 2) NOT NULL,
    product_image_url VARCHAR(255) -- Path or URL to the product image
);

-- Create Product Tastes Table
CREATE TABLE product_tastes (
    taste_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    taste_description VARCHAR(255) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE CASCADE
);