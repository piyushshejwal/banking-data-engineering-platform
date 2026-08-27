 
USE bank_staging;

INSERT INTO stg_kyc_records
(
    kyc_id,
    customer_id,
    kyc_type,
    verification_date,
    verification_status,
    risk_level,
    expiry_date,
    verification_reference,
    remarks,
    created_at,
    source_system,
    batch_id
)
SELECT
    kyc_id,
    customer_id,
    kyc_type,
    verification_date,
    verification_status,
    risk_level,
    expiry_date,
    verification_reference,
    remarks,
    created_at,
    'MYSQL_OLTP',
    1
FROM bank_oltp.kyc_records;