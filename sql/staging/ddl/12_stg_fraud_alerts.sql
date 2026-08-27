 
USE bank_staging;

CREATE TABLE stg_fraud_alerts (
    fraud_alert_id BIGINT,
    alert_reference VARCHAR(50),
    customer_id BIGINT,
    account_id BIGINT,
    transaction_id BIGINT,
    alert_type VARCHAR(50),
    risk_score DECIMAL(5,2),
    alert_timestamp DATETIME,
    alert_status VARCHAR(30),
    description VARCHAR(255),
    resolved_at DATETIME,

    source_system VARCHAR(50),
    batch_id BIGINT,
    loaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);