 
USE bank_staging;

INSERT INTO stg_merchants
(
    merchant_id,
    merchant_code,
    merchant_name,
    merchant_category,
    city_id,
    country_id,
    registration_date,
    merchant_status,
    created_at,
    source_system,
    batch_id
)
SELECT
    merchant_id,
    merchant_code,
    merchant_name,
    merchant_category,
    city_id,
    country_id,
    registration_date,
    merchant_status,
    created_at,
    'MYSQL_OLTP',
    1
FROM bank_oltp.merchants;