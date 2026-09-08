CREATE DATABASE IF NOT EXISTS bank_dw;

USE bank_dw;

CREATE TABLE IF NOT EXISTS fact_payments (
    payment_key BIGINT AUTO_INCREMENT PRIMARY KEY,
    payment_id BIGINT NOT NULL,
    transaction_key BIGINT,
    payment_method_key BIGINT,
    date_key INT,
    payment_date DATETIME,
    amount DECIMAL(18,2),
    payment_status VARCHAR(30),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);