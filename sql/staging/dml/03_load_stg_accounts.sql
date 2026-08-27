 
USE bank_staging;

INSERT INTO stg_accounts
(
    account_id,
    account_number,
    account_type_id,
    branch_id,
    opening_date,
    closing_date,
    currency_code,
    current_balance,
    available_balance,
    account_status,
    source_system,
    batch_id
)
SELECT
    account_id,
    account_number,
    account_type_id,
    branch_id,
    opening_date,
    closing_date,
    currency_code,
    current_balance,
    available_balance,
    account_status,
    'MYSQL_OLTP',
    1
FROM bank_oltp.accounts;