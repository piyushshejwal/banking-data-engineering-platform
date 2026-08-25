USE bank_oltp;

CREATE TABLE transaction_types (
    transaction_type_id INT AUTO_INCREMENT PRIMARY KEY,
    transaction_code VARCHAR(30) NOT NULL UNIQUE,
    transaction_name VARCHAR(100) NOT NULL UNIQUE,
    transaction_direction VARCHAR(10) NOT NULL,
    description VARCHAR(255),
    status VARCHAR(20) NOT NULL DEFAULT 'ACTIVE'
);