 
USE bank_staging;

CREATE TABLE stg_loans (
    loan_id BIGINT,
    loan_number VARCHAR(30),
    customer_id BIGINT,
    branch_id INT,
    loan_product_id INT,
    application_date DATE,
    approval_date DATE,
    disbursement_date DATE,
    loan_amount DECIMAL(18,2),
    interest_rate DECIMAL(5,2),
    tenure_months INT,
    outstanding_amount DECIMAL(18,2),
    loan_status VARCHAR(30),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,

    source_system VARCHAR(50),
    batch_id BIGINT,
    loaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);