 
USE bank_oltp;

CREATE TABLE kyc_records (
    kyc_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    customer_id BIGINT NOT NULL,
    kyc_type VARCHAR(30) NOT NULL,
    verification_date DATE NOT NULL,
    verification_status VARCHAR(30) NOT NULL,
    risk_level VARCHAR(20) NOT NULL DEFAULT 'LOW',
    expiry_date DATE,
    verification_reference VARCHAR(50) UNIQUE,
    remarks VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_kyc_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    CONSTRAINT chk_kyc_status
        CHECK (
            verification_status IN
            ('PENDING', 'VERIFIED', 'REJECTED', 'EXPIRED')
        ),

    CONSTRAINT chk_kyc_risk
        CHECK (
            risk_level IN ('LOW', 'MEDIUM', 'HIGH')
        )
);