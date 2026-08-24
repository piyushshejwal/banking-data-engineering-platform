USE bank_oltp;

CREATE TABLE regions (
    region_id INT AUTO_INCREMENT PRIMARY KEY,
    region_code VARCHAR(20) NOT NULL UNIQUE,
    region_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE branches (
    branch_id INT AUTO_INCREMENT PRIMARY KEY,
    branch_code VARCHAR(20) NOT NULL UNIQUE,
    branch_name VARCHAR(150) NOT NULL,
    branch_type VARCHAR(50) NOT NULL,
    city_id INT NOT NULL,
    region_id INT NOT NULL,
    manager_name VARCHAR(150),
    opening_date DATE,
    status VARCHAR(30) DEFAULT 'ACTIVE',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_branches_city
        FOREIGN KEY (city_id)
        REFERENCES cities(city_id),

    CONSTRAINT fk_branches_region
        FOREIGN KEY (region_id)
        REFERENCES regions(region_id)
);