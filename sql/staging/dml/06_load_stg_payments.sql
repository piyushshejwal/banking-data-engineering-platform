 
USE bank_staging;

INSERT INTO stg_payments
(
    payment_id,
    payment_reference,
    transaction_id,
    customer_id,
    payment_method_id,
    payment_date,
    amount,
    currency_code,
    payment_status,
    external_reference,
    failure_reason,
    source_system,
    batch_id
)
SELECT
    payment_id,
    payment_reference,
    transaction_id,
    customer_id,
    payment_method_id,
    payment_date,
    amount,
    currency_code,
    payment_status,
    external_reference,
    failure_reason,
    'MYSQL_OLTP',
    1
FROM bank_oltp.payments;