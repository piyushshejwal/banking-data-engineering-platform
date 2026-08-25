USE bank_oltp;

CREATE TABLE customer_addresses (
    address_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    customer_id BIGINT NOT NULL,
    address_type VARCHAR(30) NOT NULL,
    address_line1 VARCHAR(255) NOT NULL,
    address_line2 VARCHAR(255),
    city_id INT NOT NULL,
    pincode VARCHAR(10),
    is_primary BOOLEAN DEFAULT FALSE,
    effective_from DATE NOT NULL,
    effective_to DATE,

    CONSTRAINT fk_customer_addresses_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    CONSTRAINT fk_customer_addresses_city
        FOREIGN KEY (city_id)
        REFERENCES cities(city_id)
);