 
USE bank_staging;

CREATE TABLE stg_kyc_records (
    kyc_id BIGINT,
    customer_id BIGINT,
    kyc_type VARCHAR(30),
    verification_date DATE,
    verification_status VARCHAR(30),
    risk_level VARCHAR(20),
    expiry_date DATE,
    verification_reference VARCHAR(50),
    remarks VARCHAR(255),
    created_at TIMESTAMP,

    source_system VARCHAR(50),
    batch_id BIGINT,
    loaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);