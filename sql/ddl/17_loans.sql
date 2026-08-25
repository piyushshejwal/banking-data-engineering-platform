 
USE bank_oltp;

CREATE TABLE loans (
    loan_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    loan_number VARCHAR(30) NOT NULL UNIQUE,
    customer_id BIGINT NOT NULL,
    branch_id INT NOT NULL,
    loan_product_id INT NOT NULL,
    application_date DATE NOT NULL,
    approval_date DATE,
    disbursement_date DATE,
    loan_amount DECIMAL(18,2) NOT NULL,
    interest_rate DECIMAL(5,2) NOT NULL,
    tenure_months INT NOT NULL,
    outstanding_amount DECIMAL(18,2) NOT NULL,
    loan_status VARCHAR(30) NOT NULL DEFAULT 'APPLIED',

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_loans_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    CONSTRAINT fk_loans_branch
        FOREIGN KEY (branch_id)
        REFERENCES branches(branch_id),

    CONSTRAINT fk_loans_product
        FOREIGN KEY (loan_product_id)
        REFERENCES loan_products(loan_product_id),

    CONSTRAINT chk_loan_amount
        CHECK (loan_amount > 0),

    CONSTRAINT chk_loan_status
        CHECK (
            loan_status IN
            ('APPLIED','APPROVED','DISBURSED','ACTIVE','CLOSED','REJECTED','DEFAULTED')
        )
);