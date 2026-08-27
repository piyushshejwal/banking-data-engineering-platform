 
USE bank_staging;

INSERT INTO stg_atm_transactions
(
    atm_transaction_id,
    atm_transaction_reference,
    atm_id,
    account_id,
    card_id,
    transaction_date,
    transaction_type,
    amount,
    response_code,
    transaction_status,
    created_at,
    source_system,
    batch_id
)
SELECT
    atm_transaction_id,
    atm_transaction_reference,
    atm_id,
    account_id,
    card_id,
    transaction_date,
    transaction_type,
    amount,
    response_code,
    transaction_status,
    created_at,
    'MYSQL_OLTP',
    1
FROM bank_oltp.atm_transactions;