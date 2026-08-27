 
USE bank_staging;

CREATE TABLE stg_atm_transactions (
    atm_transaction_id BIGINT,
    atm_transaction_reference VARCHAR(50),
    atm_id INT,
    account_id BIGINT,
    card_id BIGINT,
    transaction_date DATETIME,
    transaction_type VARCHAR(30),
    amount DECIMAL(18,2),
    response_code VARCHAR(20),
    transaction_status VARCHAR(30),
    created_at TIMESTAMP,

    source_system VARCHAR(50),
    batch_id BIGINT,
    loaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);