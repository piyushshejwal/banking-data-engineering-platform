 USE bank_staging;

CREATE TABLE stg_customer_addresses (
    address_id BIGINT,
    customer_id BIGINT,
    address_type VARCHAR(30),
    address_line1 VARCHAR(255),
    address_line2 VARCHAR(255),
    city_id INT,
    pincode VARCHAR(10),
    is_primary BOOLEAN,
    effective_from DATE,
    effective_to DATE,

    source_system VARCHAR(50),
    batch_id BIGINT,
    loaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
