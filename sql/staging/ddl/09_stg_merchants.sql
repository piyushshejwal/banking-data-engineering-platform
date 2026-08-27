 
USE bank_staging;

CREATE TABLE stg_merchants (
    merchant_id BIGINT,
    merchant_code VARCHAR(30),
    merchant_name VARCHAR(150),
    merchant_category VARCHAR(100),
    city_id INT,
    country_id INT,
    registration_date DATE,
    merchant_status VARCHAR(30),
    created_at TIMESTAMP,

    source_system VARCHAR(50),
    batch_id BIGINT,
    loaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);