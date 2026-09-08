CREATE DATABASE IF NOT EXISTS bank_dw;

USE bank_dw;

CREATE TABLE IF NOT EXISTS fact_card_transactions (
    card_transaction_key BIGINT AUTO_INCREMENT PRIMARY KEY,
    card_transaction_id BIGINT NOT NULL,
    card_key BIGINT,
    merchant_key BIGINT,
    account_key BIGINT,
    date_key INT,
    transaction_date DATETIME,
    amount DECIMAL(18,2),
    transaction_status VARCHAR(30),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE IF NOT EXISTS fact_loan_payments (
    loan_payment_key BIGINT AUTO_INCREMENT PRIMARY KEY,
    loan_payment_id BIGINT NOT NULL,
    loan_id BIGINT,
    date_key INT,
    payment_date DATE,
    principal_amount DECIMAL(18,2),
    interest_amount DECIMAL(18,2),
    total_amount DECIMAL(18,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE IF NOT EXISTS fact_atm_transactions (
    atm_transaction_key BIGINT AUTO_INCREMENT PRIMARY KEY,
    atm_transaction_id BIGINT NOT NULL,
    atm_id BIGINT,
    account_key BIGINT,
    date_key INT,
    transaction_date DATETIME,
    transaction_type VARCHAR(50),
    amount DECIMAL(18,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE IF NOT EXISTS fact_loans (
    loan_key BIGINT AUTO_INCREMENT PRIMARY KEY,
    loan_id BIGINT NOT NULL,
    customer_key BIGINT,
    loan_product_key BIGINT,
    date_key INT,
    loan_amount DECIMAL(18,2),
    outstanding_amount DECIMAL(18,2),
    interest_rate DECIMAL(8,4),
    loan_status VARCHAR(30),
    start_date DATE,
    maturity_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE IF NOT EXISTS fact_fraud_alerts (
    fraud_alert_key BIGINT AUTO_INCREMENT PRIMARY KEY,
    fraud_alert_id BIGINT NOT NULL,
    customer_key BIGINT,
    account_key BIGINT,
    date_key INT,
    alert_date DATETIME,
    alert_type VARCHAR(100),
    severity VARCHAR(30),
    alert_status VARCHAR(30),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE IF NOT EXISTS fact_kyc (
    kyc_key BIGINT AUTO_INCREMENT PRIMARY KEY,
    kyc_id BIGINT NOT NULL,
    customer_key BIGINT,
    date_key INT,
    verification_date DATE,
    kyc_status VARCHAR(30),
    verification_type VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);