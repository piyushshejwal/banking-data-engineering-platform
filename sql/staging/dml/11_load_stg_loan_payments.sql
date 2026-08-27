 
USE bank_staging;

INSERT INTO stg_loan_payments
(
    loan_payment_id,
    payment_reference,
    loan_id,
    payment_date,
    principal_amount,
    interest_amount,
    penalty_amount,
    total_amount,
    payment_status,
    source_system,
    batch_id
)
SELECT
    loan_payment_id,
    payment_reference,
    loan_id,
    payment_date,
    principal_amount,
    interest_amount,
    penalty_amount,
    total_amount,
    payment_status,
    'MYSQL_OLTP',
    1
FROM bank_oltp.loan_payments;