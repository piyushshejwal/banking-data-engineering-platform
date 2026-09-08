CREATE DATABASE IF NOT EXISTS bank_dw;

USE bank_dw;

CREATE TABLE IF NOT EXISTS dim_account_type (
    account_type_key BIGINT AUTO_INCREMENT PRIMARY KEY,
    account_type_id INT NOT NULL,
    account_type_name VARCHAR(100),
    description VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);