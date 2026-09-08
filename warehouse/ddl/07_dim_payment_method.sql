CREATE DATABASE IF NOT EXISTS bank_dw;

USE bank_dw;

CREATE TABLE IF NOT EXISTS dim_payment_method (
    payment_method_key BIGINT AUTO_INCREMENT PRIMARY KEY,
    payment_method_id INT NOT NULL,
    payment_method_name VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);