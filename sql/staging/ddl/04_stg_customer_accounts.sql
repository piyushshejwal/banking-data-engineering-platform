 
USE bank_staging;

CREATE TABLE stg_customer_accounts (
    customer_account_id BIGINT,
    customer_id BIGINT,
    account_id BIGINT,
    relationship_type VARCHAR(30),
    ownership_percentage DECIMAL(5,2),
    effective_from DATE,
    effective_to DATE,
    is_primary_holder BOOLEAN,

    source_system VARCHAR(50),
    batch_id BIGINT,
    loaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);