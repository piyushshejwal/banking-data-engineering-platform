 
USE bank_staging;

CREATE TABLE stg_transactions (
    transaction_id BIGINT,
    transaction_reference VARCHAR(50),
    account_id BIGINT,
    transaction_type_id INT,
    transaction_date DATETIME,
    debit_amount DECIMAL(18,2),
    credit_amount DECIMAL(18,2),
    balance_after_transaction DECIMAL(18,2),
    currency_code VARCHAR(10),
    channel VARCHAR(30),
    counterparty_account_id BIGINT,
    transaction_status VARCHAR(30),
    remarks VARCHAR(255),

    source_system VARCHAR(50),
    batch_id BIGINT,
    loaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);