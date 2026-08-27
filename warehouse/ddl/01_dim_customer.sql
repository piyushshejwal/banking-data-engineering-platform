CREATE DATABASE IF NOT EXISTS bank_dw;

USE bank_dw;

CREATE TABLE IF NOT EXISTS dim_customer (
    customer_key BIGINT AUTO_INCREMENT PRIMARY KEY,
    customer_id BIGINT NOT NULL,
    customer_number VARCHAR(30) NOT NULL,
    customer_name VARCHAR(201),
    customer_type VARCHAR(30),
    customer_status VARCHAR(30),
    risk_category VARCHAR(30),
    kyc_status VARCHAR(30),
    branch_id INT,
    city_id INT,
    effective_from DATE NOT NULL,
    effective_to DATE,
    is_current BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    UNIQUE (customer_number, effective_from)
);