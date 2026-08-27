 
USE bank_staging;

CREATE TABLE stg_accounts (
    account_id BIGINT,
    account_number VARCHAR(30),
    account_type_id INT,
    branch_id INT,
    opening_date DATE,
    closing_date DATE,
    currency_code VARCHAR(10),
    current_balance DECIMAL(18,2),
    available_balance DECIMAL(18,2),
    account_status VARCHAR(30),

    source_system VARCHAR(50),
    batch_id BIGINT,
    loaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);