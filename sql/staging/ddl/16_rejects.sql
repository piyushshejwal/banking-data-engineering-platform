USE bank_staging;

CREATE TABLE IF NOT EXISTS etl_rejects (
    reject_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    batch_id BIGINT NOT NULL,
    source_table VARCHAR(100),
    record_id VARCHAR(100),
    error_type VARCHAR(100),
    error_message VARCHAR(1000),
    rejected_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);