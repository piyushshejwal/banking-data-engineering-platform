 
USE bank_staging;

CREATE TABLE stg_atms (
    atm_id INT,
    atm_code VARCHAR(30),
    branch_id INT,
    city_id INT,
    installation_date DATE,
    atm_status VARCHAR(30),
    cash_available DECIMAL(18,2),

    source_system VARCHAR(50),
    batch_id BIGINT,
    loaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);