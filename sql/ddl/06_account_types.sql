USE bank_oltp;

CREATE TABLE account_types (
    account_type_id INT AUTO_INCREMENT PRIMARY KEY,
    account_type_code VARCHAR(30) NOT NULL UNIQUE,
    account_type_name VARCHAR(100) NOT NULL UNIQUE,
    description VARCHAR(255),
    minimum_balance DECIMAL(15,2) DEFAULT 0,
    interest_rate DECIMAL(5,2) DEFAULT 0,
    status VARCHAR(20) NOT NULL DEFAULT 'ACTIVE'
);