CREATE DATABASE IF NOT EXISTS bank_dw;

USE bank_dw;

CREATE TABLE IF NOT EXISTS dim_account (
    account_key BIGINT AUTO_INCREMENT PRIMARY KEY,
    account_id BIGINT NOT NULL,
    account_number VARCHAR(30) NOT NULL,
    account_type_id INT,
    account_status VARCHAR(30),
    current_balance DECIMAL(18,2),
    effective_from DATE NOT NULL,
    effective_to DATE,
    is_current BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,
    UNIQUE (account_number, effective_from)
);