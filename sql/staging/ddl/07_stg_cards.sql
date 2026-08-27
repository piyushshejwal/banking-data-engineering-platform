 
USE bank_staging;

CREATE TABLE stg_cards (
    card_id BIGINT,
    card_number_hash VARCHAR(128),
    masked_card_number VARCHAR(25),
    customer_id BIGINT,
    account_id BIGINT,
    card_type VARCHAR(30),
    card_network VARCHAR(30),
    issue_date DATE,
    expiry_date DATE,
    card_status VARCHAR(30),
    credit_limit DECIMAL(18,2),
    available_limit DECIMAL(18,2),
    created_at TIMESTAMP,

    source_system VARCHAR(50),
    batch_id BIGINT,
    loaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);