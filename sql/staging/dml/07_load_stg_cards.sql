 
USE bank_staging;

INSERT INTO stg_cards
(
    card_id,
    card_number_hash,
    masked_card_number,
    customer_id,
    account_id,
    card_type,
    card_network,
    issue_date,
    expiry_date,
    card_status,
    credit_limit,
    available_limit,
    created_at,
    source_system,
    batch_id
)
SELECT
    card_id,
    card_number_hash,
    masked_card_number,
    customer_id,
    account_id,
    card_type,
    card_network,
    issue_date,
    expiry_date,
    card_status,
    credit_limit,
    available_limit,
    created_at,
    'MYSQL_OLTP',
    1
FROM bank_oltp.cards;