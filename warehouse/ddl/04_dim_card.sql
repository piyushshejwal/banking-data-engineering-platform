CREATE DATABASE IF NOT EXISTS bank_dw;

USE bank_dw;

CREATE TABLE IF NOT EXISTS dim_card (
    card_key BIGINT AUTO_INCREMENT PRIMARY KEY,
    card_id BIGINT NOT NULL,
    card_number VARCHAR(30),
    card_type VARCHAR(50),
    card_status VARCHAR(30),
    issue_date DATE,
    expiry_date DATE,
    account_id BIGINT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);