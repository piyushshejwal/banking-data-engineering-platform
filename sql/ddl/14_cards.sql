 
USE bank_oltp;

CREATE TABLE cards (
    card_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    card_number_hash VARCHAR(128) NOT NULL UNIQUE,
    masked_card_number VARCHAR(25) NOT NULL,
    customer_id BIGINT NOT NULL,
    account_id BIGINT NOT NULL,
    card_type VARCHAR(30) NOT NULL,
    card_network VARCHAR(30),
    issue_date DATE NOT NULL,
    expiry_date DATE NOT NULL,
    card_status VARCHAR(30) NOT NULL DEFAULT 'ACTIVE',
    credit_limit DECIMAL(18,2) DEFAULT 0.00,
    available_limit DECIMAL(18,2) DEFAULT 0.00,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_cards_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    CONSTRAINT fk_cards_account
        FOREIGN KEY (account_id)
        REFERENCES accounts(account_id),

    CONSTRAINT chk_card_status
        CHECK (
            card_status IN
            ('ACTIVE', 'BLOCKED', 'EXPIRED', 'CANCELLED')
        )
);