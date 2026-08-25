USE bank_oltp;

-- Countries
INSERT INTO countries (country_code, country_name)
VALUES
('IN', 'India'),
('US', 'United States'),
('GB', 'United Kingdom'),
('AE', 'United Arab Emirates'),
('SG', 'Singapore');

-- States
INSERT INTO states (state_code, state_name, country_id)
VALUES
('MH', 'Maharashtra', 1),
('DL', 'Delhi', 1),
('KA', 'Karnataka', 1),
('TN', 'Tamil Nadu', 1),
('GJ', 'Gujarat', 1),
('RJ', 'Rajasthan', 1),
('TG', 'Telangana', 1),
('KL', 'Kerala', 1),
('WB', 'West Bengal', 1),
('UP', 'Uttar Pradesh', 1),
('MP', 'Madhya Pradesh', 1),
('AP', 'Andhra Pradesh', 1);

-- Cities
INSERT INTO cities (city_name, state_id)
VALUES
('Mumbai', 1),
('Pune', 1),
('Nashik', 1),
('Nagpur', 1),
('New Delhi', 2),
('Bengaluru', 3),
('Mysuru', 3),
('Chennai', 4),
('Coimbatore', 4),
('Ahmedabad', 5),
('Surat', 5),
('Jaipur', 6),
('Udaipur', 6),
('Hyderabad', 7),
('Warangal', 7),
('Kochi', 8),
('Kozhikode', 8),
('Kolkata', 9),
('Lucknow', 10),
('Noida', 10),
('Indore', 11),
('Vijayawada', 12);