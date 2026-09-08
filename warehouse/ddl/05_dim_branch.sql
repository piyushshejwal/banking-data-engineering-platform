CREATE DATABASE IF NOT EXISTS bank_dw;

USE bank_dw;

CREATE TABLE IF NOT EXISTS dim_branch (
    branch_key BIGINT AUTO_INCREMENT PRIMARY KEY,
    branch_id INT NOT NULL,
    branch_code VARCHAR(30),
    branch_name VARCHAR(150),
    city_id INT,
    region_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);