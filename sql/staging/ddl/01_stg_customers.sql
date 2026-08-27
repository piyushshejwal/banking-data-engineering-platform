USE bank_staging;

CREATE TABLE stg_customers (
    customer_id BIGINT,
    customer_number VARCHAR(30),
    first_name VARCHAR(100),
    middle_name VARCHAR(100),
    last_name VARCHAR(100),
    date_of_birth DATE,
    gender VARCHAR(20),
    email VARCHAR(255),
    phone VARCHAR(20),
    customer_type VARCHAR(30),
    customer_status VARCHAR(30),
    registration_date DATE,
    risk_category VARCHAR(30),
    kyc_status VARCHAR(30),
    home_branch_id INT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,

    source_system VARCHAR(50),
    batch_id BIGINT,
    loaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);