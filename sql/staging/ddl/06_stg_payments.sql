 
USE bank_staging;

CREATE TABLE stg_payments (
    payment_id BIGINT,
    payment_reference VARCHAR(50),
    transaction_id BIGINT,
    customer_id BIGINT,
    payment_method_id INT,
    payment_date DATETIME,
    amount DECIMAL(18,2),
    currency_code VARCHAR(10),
    payment_status VARCHAR(30),
    external_reference VARCHAR(100),
    failure_reason VARCHAR(255),

    source_system VARCHAR(50),
    batch_id BIGINT,
    loaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);