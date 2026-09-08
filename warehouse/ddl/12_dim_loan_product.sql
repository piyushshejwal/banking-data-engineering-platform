CREATE DATABASE IF NOT EXISTS bank_dw;

USE bank_dw;

CREATE TABLE IF NOT EXISTS dim_loan_product (
    loan_product_key BIGINT AUTO_INCREMENT PRIMARY KEY,
    loan_product_id INT NOT NULL,
    product_name VARCHAR(150),
    interest_rate DECIMAL(8,4),
    tenure_months INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);