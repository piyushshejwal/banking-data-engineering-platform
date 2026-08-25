 
USE bank_oltp;

CREATE TABLE loan_payments (
    loan_payment_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    payment_reference VARCHAR(50) NOT NULL UNIQUE,
    loan_id BIGINT NOT NULL,
    payment_date DATE NOT NULL,
    principal_amount DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    interest_amount DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    penalty_amount DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    total_amount DECIMAL(18,2) NOT NULL,
    payment_status VARCHAR(30) NOT NULL DEFAULT 'SUCCESS',

    CONSTRAINT fk_loan_payments_loan
        FOREIGN KEY (loan_id)
        REFERENCES loans(loan_id),

    CONSTRAINT chk_loan_payment_amount
        CHECK (
            principal_amount >= 0
            AND interest_amount >= 0
            AND penalty_amount >= 0
            AND total_amount >= 0
        ),

    CONSTRAINT chk_loan_payment_status
        CHECK (
            payment_status IN ('SUCCESS','FAILED','PENDING','REVERSED')
        )
);