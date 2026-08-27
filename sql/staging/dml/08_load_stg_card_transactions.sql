 
USE bank_staging;

INSERT INTO stg_card_transactions
(
    card_transaction_id,
    card_transaction_reference,
    card_id,
    customer_id,
    account_id,
    transaction_date,
    merchant_id,
    transaction_type,
    amount,
    currency_code,
    channel,
    location,
    transaction_status,
    authorization_code,
    created_at,
    source_system,
    batch_id
)
SELECT
    card_transaction_id,
    card_transaction_reference,
    card_id,
    customer_id,
    account_id,
    transaction_date,
    merchant_id,
    transaction_type,
    amount,
    currency_code,
    channel,
    location,
    transaction_status,
    authorization_code,
    created_at,
    'MYSQL_OLTP',
    1
FROM bank_oltp.card_transactions;