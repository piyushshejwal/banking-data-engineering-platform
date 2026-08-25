 
USE bank_oltp;

CREATE TABLE loan_products (
    loan_product_id INT AUTO_INCREMENT PRIMARY KEY,
    loan_product_code VARCHAR(30) NOT NULL UNIQUE,
    loan_product_name VARCHAR(100) NOT NULL UNIQUE,
    interest_rate DECIMAL(5,2) NOT NULL,
    minimum_amount DECIMAL(18,2) NOT NULL,
    maximum_amount DECIMAL(18,2) NOT NULL,
    maximum_tenure_months INT NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'ACTIVE'
);