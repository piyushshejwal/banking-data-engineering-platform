 
USE bank_staging;

CREATE TABLE stg_loan_payments (
    loan_payment_id BIGINT,
    payment_reference VARCHAR(50),
    loan_id BIGINT,
    payment_date DATE,
    principal_amount DECIMAL(18,2),
    interest_amount DECIMAL(18,2),
    penalty_amount DECIMAL(18,2),
    total_amount DECIMAL(18,2),
    payment_status VARCHAR(30),

    source_system VARCHAR(50),
    batch_id BIGINT,
    loaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);