CREATE DATABASE IF NOT EXISTS bank_dw;

USE bank_dw;

CREATE TABLE IF NOT EXISTS dim_transaction_type (
    transaction_type_key BIGINT AUTO_INCREMENT PRIMARY KEY,
    transaction_type_id INT NOT NULL,
    transaction_type_name VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);