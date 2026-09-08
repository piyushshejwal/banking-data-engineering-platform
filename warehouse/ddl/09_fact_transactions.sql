CREATE DATABASE IF NOT EXISTS bank_dw;

USE bank_dw;

CREATE TABLE IF NOT EXISTS fact_transactions (
    transaction_key BIGINT AUTO_INCREMENT PRIMARY KEY,
    transaction_id BIGINT NOT NULL,
    customer_key BIGINT,
    account_key BIGINT,
    transaction_type_key BIGINT,
    date_key INT,
    transaction_date DATETIME,
    amount DECIMAL(18,2),
    transaction_status VARCHAR(30),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);