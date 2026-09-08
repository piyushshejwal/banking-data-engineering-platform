 
USE bank_staging;

CREATE TABLE IF NOT EXISTS etl_audit (
    audit_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    batch_id BIGINT NOT NULL,
    pipeline_name VARCHAR(100) NOT NULL,
    source_table VARCHAR(100),
    target_table VARCHAR(100),
    start_time DATETIME,
    end_time DATETIME,
    records_read BIGINT DEFAULT 0,
    records_loaded BIGINT DEFAULT 0,
    status VARCHAR(30),
    error_message VARCHAR(1000)
);