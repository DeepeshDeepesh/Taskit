CREATE DATABASE IF NOT EXISTS taskitdb;
USE taskitdb;

CREATE TABLE users (
  users_ID INT AUTO_INCREMENT PRIMARY KEY,
  users_Name VARCHAR(100),
  users_Email VARCHAR(100) UNIQUE,
  users_Password VARCHAR(100),
  users_Role ENUM('admin','customer')
);

CREATE TABLE professionals (
  professionals_ID INT AUTO_INCREMENT PRIMARY KEY,
  professionals_Name VARCHAR(100),
  professionals_service_Type VARCHAR(100),
  professionals_Price_Per_Hour DECIMAL(10,2),
  professionals_Area VARCHAR(100),
  professionals_Available BOOLEAN DEFAULT TRUE
);

CREATE TABLE service_requests (
  srvic_req_ID INT AUTO_INCREMENT PRIMARY KEY,
  Customer_ID INT,
  professionals_ID INT,
  date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  status ENUM('Pending','Completed') DEFAULT 'Pending',
  FOREIGN KEY (Customer_ID) REFERENCES users(users_ID),
  FOREIGN KEY (professionals_ID) REFERENCES professionals(professionals_ID)
);

INSERT INTO users (name, email, password, role)
VALUES ('Admin', 'admin@taskit.com', 'admin123', 'admin'),
       ('Ishita', 'user@gmail.com', '1234', 'customer');

INSERT INTO professionals (name, service_type, price_per_hour, area, available)
VALUES ('Rohit Kumar', 'Electrician', 250, 'Noida', TRUE),
       ('Sahil Sharma', 'Plumber', 300, 'Greater Noida', TRUE);
       
select * from professionals;
select * from users;
select * from service_requests;


