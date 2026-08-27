 
USE bank_staging;

INSERT INTO stg_loans
(
    loan_id,
    loan_number,
    customer_id,
    branch_id,
    loan_product_id,
    application_date,
    approval_date,
    disbursement_date,
    loan_amount,
    interest_rate,
    tenure_months,
    outstanding_amount,
    loan_status,
    created_at,
    updated_at,
    source_system,
    batch_id
)
SELECT
    loan_id,
    loan_number,
    customer_id,
    branch_id,
    loan_product_id,
    application_date,
    approval_date,
    disbursement_date,
    loan_amount,
    interest_rate,
    tenure_months,
    outstanding_amount,
    loan_status,
    created_at,
    updated_at,
    'MYSQL_OLTP',
    1
FROM bank_oltp.loans;