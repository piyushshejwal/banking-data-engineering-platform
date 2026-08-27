 
USE bank_staging;

CREATE TABLE stg_card_transactions (
    card_transaction_id BIGINT,
    card_transaction_reference VARCHAR(50),
    card_id BIGINT,
    customer_id BIGINT,
    account_id BIGINT,
    transaction_date DATETIME,
    merchant_id BIGINT,
    transaction_type VARCHAR(30),
    amount DECIMAL(18,2),
    currency_code VARCHAR(10),
    channel VARCHAR(30),
    location VARCHAR(150),
    transaction_status VARCHAR(30),
    authorization_code VARCHAR(50),
    created_at TIMESTAMP,

    source_system VARCHAR(50),
    batch_id BIGINT,
    loaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);