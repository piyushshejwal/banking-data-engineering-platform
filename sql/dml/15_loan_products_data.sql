 
USE bank_oltp;

INSERT INTO loan_products
(
    loan_product_code,
    loan_product_name,
    interest_rate,
    minimum_amount,
    maximum_amount,
    maximum_tenure_months,
    status
)
VALUES
('HOME', 'Home Loan', 8.50, 500000.00, 10000000.00, 360, 'ACTIVE'),
('PERSONAL', 'Personal Loan', 12.50, 50000.00, 2000000.00, 84, 'ACTIVE'),
('CAR', 'Car Loan', 9.25, 100000.00, 5000000.00, 84, 'ACTIVE'),
('EDU', 'Education Loan', 10.00, 100000.00, 3000000.00, 180, 'ACTIVE'),
('BUSINESS', 'Business Loan', 11.50, 500000.00, 10000000.00, 120, 'ACTIVE');