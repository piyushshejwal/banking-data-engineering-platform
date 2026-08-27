CREATE TABLE accounts (
    account_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    account_number VARCHAR(30) NOT NULL UNIQUE,
    account_type_id INT NOT NULL,
    branch_id INT NOT NULL,
    opening_date DATE NOT NULL,
    closing_date DATE,
    currency_code VARCHAR(10) NOT NULL DEFAULT 'INR',
    current_balance DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    available_balance DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    account_status VARCHAR(30) NOT NULL DEFAULT 'ACTIVE',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_accounts_account_type
        FOREIGN KEY (account_type_id)
        REFERENCES account_types(account_type_id),

    CONSTRAINT fk_accounts_branch
        FOREIGN KEY (branch_id)
        REFERENCES branches(branch_id)
);
