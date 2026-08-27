 
USE bank_staging;

INSERT INTO stg_customer_accounts
(
    customer_account_id,
    customer_id,
    account_id,
    relationship_type,
    ownership_percentage,
    effective_from,
    effective_to,
    is_primary_holder,
    source_system,
    batch_id
)
SELECT
    customer_account_id,
    customer_id,
    account_id,
    relationship_type,
    ownership_percentage,
    effective_from,
    effective_to,
    is_primary_holder,
    'MYSQL_OLTP',
    1
FROM bank_oltp.customer_accounts;