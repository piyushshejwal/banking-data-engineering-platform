USE bank_oltp;

CREATE TABLE customers (
    customer_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    customer_number VARCHAR(30) NOT NULL UNIQUE,
    first_name VARCHAR(100) NOT NULL,
    middle_name VARCHAR(100),
    last_name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    gender VARCHAR(20),
    email VARCHAR(255),
    phone VARCHAR(20),
    customer_type VARCHAR(30) NOT NULL,
    customer_status VARCHAR(30) NOT NULL DEFAULT 'ACTIVE',
    registration_date DATE NOT NULL,
    risk_category VARCHAR(30) DEFAULT 'LOW',
    kyc_status VARCHAR(30) NOT NULL DEFAULT 'PENDING',
    home_branch_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_customers_branch
        FOREIGN KEY (home_branch_id)
        REFERENCES branches(branch_id)
);