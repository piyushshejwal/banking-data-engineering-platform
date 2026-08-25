 
USE bank_oltp;

CREATE TABLE card_transactions (
    card_transaction_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    card_transaction_reference VARCHAR(50) NOT NULL UNIQUE,
    card_id BIGINT NOT NULL,
    customer_id BIGINT NOT NULL,
    account_id BIGINT NOT NULL,
    transaction_date DATETIME NOT NULL,
    merchant_id BIGINT,
    transaction_type VARCHAR(30) NOT NULL,
    amount DECIMAL(18,2) NOT NULL,
    currency_code VARCHAR(10) NOT NULL DEFAULT 'INR',
    channel VARCHAR(30),
    location VARCHAR(150),
    transaction_status VARCHAR(30) NOT NULL DEFAULT 'SUCCESS',
    authorization_code VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_card_transactions_card
        FOREIGN KEY (card_id)
        REFERENCES cards(card_id),

    CONSTRAINT fk_card_transactions_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    CONSTRAINT fk_card_transactions_account
        FOREIGN KEY (account_id)
        REFERENCES accounts(account_id),

    CONSTRAINT chk_card_transaction_amount
        CHECK (amount >= 0),

    CONSTRAINT chk_card_transaction_status
        CHECK (
            transaction_status IN
            ('SUCCESS', 'FAILED', 'PENDING', 'REVERSED')
        )
);