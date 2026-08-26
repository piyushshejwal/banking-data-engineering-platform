 
USE bank_oltp;

CREATE TABLE atms (
    atm_id INT AUTO_INCREMENT PRIMARY KEY,
    atm_code VARCHAR(30) NOT NULL UNIQUE,
    branch_id INT NOT NULL,
    city_id INT NOT NULL,
    installation_date DATE NOT NULL,
    atm_status VARCHAR(30) NOT NULL DEFAULT 'ACTIVE',
    cash_available DECIMAL(18,2) DEFAULT 0.00,

    CONSTRAINT fk_atms_branch
        FOREIGN KEY (branch_id)
        REFERENCES branches(branch_id),

    CONSTRAINT fk_atms_city
        FOREIGN KEY (city_id)
        REFERENCES cities(city_id),

    CONSTRAINT chk_atm_status
        CHECK (
            atm_status IN ('ACTIVE','INACTIVE','MAINTENANCE')
        )
);