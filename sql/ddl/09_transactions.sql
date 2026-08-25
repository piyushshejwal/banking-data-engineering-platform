use bank_oltp;

CREATE TABLE transactions (
    transaction_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    transaction_reference VARCHAR(50) NOT NULL UNIQUE,
    account_id BIGINT NOT NULL,
    transaction_type_id INT NOT NULL,
    transaction_date DATETIME NOT NULL,
    debit_amount DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    credit_amount DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    balance_after_transaction DECIMAL(18,2) NOT NULL,
    currency_code VARCHAR(10) NOT NULL DEFAULT 'INR',
    channel VARCHAR(30) NOT NULL,
    counterparty_account_id BIGINT,
    transaction_status VARCHAR(30) NOT NULL DEFAULT 'SUCCESS',
    remarks VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_transactions_account
        FOREIGN KEY (account_id)
        REFERENCES accounts(account_id),

    CONSTRAINT fk_transactions_type
        FOREIGN KEY (transaction_type_id)
        REFERENCES transaction_types(transaction_type_id),

    CONSTRAINT fk_transactions_counterparty
        FOREIGN KEY (counterparty_account_id)
        REFERENCES accounts(account_id),

    CONSTRAINT chk_transaction_amount
        CHECK (
            debit_amount >= 0
            AND credit_amount >= 0
        ),

    CONSTRAINT chk_transaction_status
        CHECK (
            transaction_status IN
            ('SUCCESS', 'FAILED', 'PENDING', 'REVERSED')
        )
);