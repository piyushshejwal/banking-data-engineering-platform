 
USE bank_oltp;

CREATE TABLE merchants (
    merchant_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    merchant_code VARCHAR(30) NOT NULL UNIQUE,
    merchant_name VARCHAR(150) NOT NULL,
    merchant_category VARCHAR(100) NOT NULL,
    city_id INT NOT NULL,
    country_id INT NOT NULL,
    registration_date DATE,
    merchant_status VARCHAR(30) NOT NULL DEFAULT 'ACTIVE',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_merchants_city
        FOREIGN KEY (city_id)
        REFERENCES cities(city_id),

    CONSTRAINT fk_merchants_country
        FOREIGN KEY (country_id)
        REFERENCES countries(country_id),

    CONSTRAINT chk_merchant_status
        CHECK (
            merchant_status IN ('ACTIVE', 'INACTIVE', 'SUSPENDED')
        )
);