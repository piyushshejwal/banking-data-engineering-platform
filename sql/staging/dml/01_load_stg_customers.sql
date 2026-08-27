 
USE bank_staging;

INSERT INTO stg_customers
(
    customer_id,
    customer_number,
    first_name,
    middle_name,
    last_name,
    date_of_birth,
    gender,
    email,
    phone,
    customer_type,
    customer_status,
    registration_date,
    risk_category,
    kyc_status,
    home_branch_id,
    created_at,
    updated_at,
    source_system,
    batch_id,
    loaded_at
)
SELECT
    customer_id,
    customer_number,
    first_name,
    middle_name,
    last_name,
    date_of_birth,
    gender,
    email,
    phone,
    customer_type,
    customer_status,
    registration_date,
    risk_category,
    kyc_status,
    home_branch_id,
    created_at,
    updated_at,
    'MYSQL_OLTP',
    1001,
    CURRENT_TIMESTAMP
FROM bank_oltp.customers;