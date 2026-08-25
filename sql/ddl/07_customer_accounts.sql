CREATE TABLE customer_accounts (
    customer_account_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    customer_id BIGINT NOT NULL,
    account_id BIGINT NOT NULL,
    relationship_type VARCHAR(30) NOT NULL,
    ownership_percentage DECIMAL(5,2) DEFAULT 100.00,
    effective_from DATE NOT NULL,
    effective_to DATE,
    is_primary_holder BOOLEAN DEFAULT FALSE,

    CONSTRAINT fk_customer_accounts_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    CONSTRAINT fk_customer_accounts_account
        FOREIGN KEY (account_id)
        REFERENCES accounts(account_id),

    CONSTRAINT uq_customer_account
        UNIQUE (customer_id, account_id)
);