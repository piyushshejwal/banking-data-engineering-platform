 
USE bank_oltp;

INSERT INTO account_types
(account_type_code,account_type_name,description,minimum_balance,interest_rate,status)
VALUES
('SAV','Savings Account','Personal savings account',1000.00,3.50,'ACTIVE'),
('CUR','Current Account','Business current account',5000.00,0.00,'ACTIVE'),
('SAL','Salary Account','Salary-linked savings account',0.00,3.00,'ACTIVE'),
('NRE','NRE Account','Non-resident external account',5000.00,4.00,'ACTIVE'),
('NRO','NRO Account','Non-resident ordinary account',5000.00,3.50,'ACTIVE'),
('FD','Fixed Deposit','Term deposit account',10000.00,7.00,'ACTIVE'),
('RD','Recurring Deposit','Monthly recurring deposit',500.00,6.50,'ACTIVE');