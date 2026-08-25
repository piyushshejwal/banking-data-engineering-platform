 
USE bank_oltp;

INSERT INTO payment_methods
(payment_method_code,payment_method_name,description)
VALUES
('UPI','UPI','Unified Payments Interface'),
('CARD','Card','Debit or credit card payment'),
('NEFT','NEFT','National Electronic Funds Transfer'),
('RTGS','RTGS','Real Time Gross Settlement'),
('IMPS','IMPS','Immediate Payment Service'),
('NETBANKING','Net Banking','Internet banking payment'),
('CASH','Cash','Cash based payment'),
('CHEQUE','Cheque','Cheque based payment');