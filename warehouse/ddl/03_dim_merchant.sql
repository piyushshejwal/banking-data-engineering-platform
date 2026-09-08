CREATE DATABASE IF NOT EXISTS bank_dw;

USE bank_dw;

CREATE TABLE IF NOT EXISTS dim_merchant (
    merchant_key BIGINT AUTO_INCREMENT PRIMARY KEY,
    merchant_id BIGINT NOT NULL,
    merchant_name VARCHAR(150),
    merchant_category VARCHAR(100),
    city_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);