 
USE bank_oltp;

CREATE TABLE fraud_alerts (
    fraud_alert_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    alert_reference VARCHAR(50) NOT NULL UNIQUE,
    customer_id BIGINT NOT NULL,
    account_id BIGINT NOT NULL,
    transaction_id BIGINT,
    alert_type VARCHAR(50) NOT NULL,
    risk_score DECIMAL(5,2) NOT NULL,
    alert_timestamp DATETIME NOT NULL,
    alert_status VARCHAR(30) NOT NULL DEFAULT 'OPEN',
    description VARCHAR(255),
    resolved_at DATETIME,

    CONSTRAINT fk_fraud_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    CONSTRAINT fk_fraud_account
        FOREIGN KEY (account_id)
        REFERENCES accounts(account_id),

    CONSTRAINT fk_fraud_transaction
        FOREIGN KEY (transaction_id)
        REFERENCES transactions(transaction_id),

    CONSTRAINT chk_fraud_score
        CHECK (risk_score BETWEEN 0 AND 100),

    CONSTRAINT chk_fraud_status
        CHECK (
            alert_status IN
            ('OPEN', 'UNDER_REVIEW', 'CONFIRMED', 'FALSE_POSITIVE', 'CLOSED')
        )
);