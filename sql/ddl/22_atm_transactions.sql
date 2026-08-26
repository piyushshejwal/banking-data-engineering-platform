 
USE bank_oltp;

CREATE TABLE atm_transactions (
    atm_transaction_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    atm_transaction_reference VARCHAR(50) NOT NULL UNIQUE,
    atm_id INT NOT NULL,
    account_id BIGINT NOT NULL,
    card_id BIGINT,
    transaction_date DATETIME NOT NULL,
    transaction_type VARCHAR(30) NOT NULL,
    amount DECIMAL(18,2) NOT NULL,
    response_code VARCHAR(20),
    transaction_status VARCHAR(30) NOT NULL DEFAULT 'SUCCESS',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_atm_transactions_atm
        FOREIGN KEY (atm_id)
        REFERENCES atms(atm_id),

    CONSTRAINT fk_atm_transactions_account
        FOREIGN KEY (account_id)
        REFERENCES accounts(account_id),

    CONSTRAINT fk_atm_transactions_card
        FOREIGN KEY (card_id)
        REFERENCES cards(card_id),

    CONSTRAINT chk_atm_transaction_amount
        CHECK (amount >= 0),

    CONSTRAINT chk_atm_transaction_status
        CHECK (
            transaction_status IN
            ('SUCCESS','FAILED','PENDING','REVERSED')
        )
);