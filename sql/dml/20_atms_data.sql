 
USE bank_oltp;

INSERT INTO atms
(
    atm_code,
    branch_id,
    city_id,
    installation_date,
    atm_status,
    cash_available
)
VALUES
('ATM-MUM-001', 1, 1, '2020-01-15', 'ACTIVE', 1500000.00),
('ATM-PUN-001', 2, 2, '2020-03-20', 'ACTIVE', 1200000.00),
('ATM-NAS-001', 3, 3, '2021-06-10', 'ACTIVE', 800000.00),
('ATM-NAG-001', 4, 4, '2021-09-12', 'ACTIVE', 900000.00),
('ATM-DEL-001', 5, 5, '2020-05-05', 'ACTIVE', 1800000.00),
('ATM-BLR-001', 6, 6, '2020-08-18', 'ACTIVE', 1600000.00),
('ATM-MYS-001', 7, 7, '2022-01-15', 'ACTIVE', 700000.00),
('ATM-CHE-001', 8, 8, '2021-11-25', 'ACTIVE', 1100000.00),
('ATM-COI-001', 9, 9, '2022-04-10', 'MAINTENANCE', 0.00),
('ATM-AMD-001', 10, 10, '2021-02-14', 'ACTIVE', 1300000.00),
('ATM-SUR-001', 11, 11, '2022-07-20', 'ACTIVE', 950000.00);