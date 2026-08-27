 
USE bank_staging;

INSERT INTO stg_fraud_alerts
(
    fraud_alert_id,
    alert_reference,
    customer_id,
    account_id,
    transaction_id,
    alert_type,
    risk_score,
    alert_timestamp,
    alert_status,
    description,
    resolved_at,
    source_system,
    batch_id
)
SELECT
    fraud_alert_id,
    alert_reference,
    customer_id,
    account_id,
    transaction_id,
    alert_type,
    risk_score,
    alert_timestamp,
    alert_status,
    description,
    resolved_at,
    'MYSQL_OLTP',
    1
FROM bank_oltp.fraud_alerts;