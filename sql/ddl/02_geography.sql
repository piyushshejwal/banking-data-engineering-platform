USE bank_oltp;

CREATE TABLE if not exists countries (
    country_id INT AUTO_INCREMENT PRIMARY KEY,
    country_code VARCHAR(10) NOT NULL UNIQUE,
    country_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE if not exists states (
    state_id INT AUTO_INCREMENT PRIMARY KEY,
    state_code VARCHAR(20) NOT NULL UNIQUE,
    state_name VARCHAR(100) NOT NULL,
    country_id INT NOT NULL,
    
    CONSTRAINT fk_states_country
        FOREIGN KEY (country_id)
        REFERENCES countries(country_id)
);

CREATE TABLE if not exists cities (
    city_id INT AUTO_INCREMENT PRIMARY KEY,
    city_name VARCHAR(100) NOT NULL,
    state_id INT NOT NULL,
    
    CONSTRAINT fk_cities_state
        FOREIGN KEY (state_id)
        REFERENCES states(state_id)
);