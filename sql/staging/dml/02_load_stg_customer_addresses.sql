 
USE bank_staging;

INSERT INTO stg_customer_addresses
(
    address_id,
    customer_id,
    address_type,
    address_line1,
    address_line2,
    city_id,
    pincode,
    is_primary,
    effective_from,
    effective_to,
    source_system,
    batch_id
)
SELECT
    address_id,
    customer_id,
    address_type,
    address_line1,
    address_line2,
    city_id,
    pincode,
    is_primary,
    effective_from,
    effective_to,
    'MYSQL_OLTP',
    1
FROM bank_oltp.customer_addresses;