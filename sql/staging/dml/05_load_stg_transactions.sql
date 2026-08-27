 
USE bank_staging;

INSERT INTO stg_transactions
(
    transaction_id,
    transaction_reference,
    account_id,
    transaction_type_id,
    transaction_date,
    debit_amount,
    credit_amount,
    balance_after_transaction,
    currency_code,
    channel,
    counterparty_account_id,
    transaction_status,
    remarks,
    source_system,
    batch_id
)
SELECT
    transaction_id,
    transaction_reference,
    account_id,
    transaction_type_id,
    transaction_date,
    debit_amount,
    credit_amount,
    balance_after_transaction,
    currency_code,
    channel,
    counterparty_account_id,
    transaction_status,
    remarks,
    'MYSQL_OLTP',
    1
FROM bank_oltp.transactions;