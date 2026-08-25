 
USE bank_oltp;

INSERT INTO transactions
(transaction_reference,account_id,transaction_type_id,transaction_date,
 debit_amount,credit_amount,balance_after_transaction,currency_code,
 channel,counterparty_account_id,transaction_status,remarks)
VALUES
('TXN00000001',1,1,'2026-01-05 10:15:00',0.00,50000.00,300000.00,'INR','BRANCH',NULL,'SUCCESS','Cash deposit'),
('TXN00000002',1,3,'2026-01-06 11:30:00',5000.00,0.00,295000.00,'INR','MOBILE_APP',2,'SUCCESS','UPI transfer'),
('TXN00000003',2,3,'2026-01-06 11:30:00',0.00,5000.00,90000.00,'INR','MOBILE_APP',1,'SUCCESS','UPI credit'),
('TXN00000004',3,4,'2026-01-08 09:45:00',25000.00,0.00,725000.00,'INR','NET_BANKING',4,'SUCCESS','NEFT transfer'),
('TXN00000005',4,5,'2026-01-10 14:20:00',100000.00,0.00,350000.00,'INR','BRANCH',5,'SUCCESS','RTGS transfer'),
('TXN00000006',5,6,'2026-01-12 16:10:00',10000.00,0.00,52000.00,'INR','MOBILE_APP',6,'SUCCESS','IMPS transfer'),
('TXN00000007',6,7,'2026-01-15 19:30:00',2500.00,0.00,12500.00,'INR','CARD',NULL,'SUCCESS','POS purchase'),
('TXN00000008',7,8,'2026-01-18 12:00:00',50000.00,0.00,450000.00,'INR','ATM',NULL,'SUCCESS','ATM withdrawal'),
('TXN00000009',8,9,'2026-01-31 23:59:00',0.00,750.00,95750.00,'INR','SYSTEM',NULL,'SUCCESS','Monthly interest'),
('TXN00000010',9,10,'2026-02-01 08:00:00',500.00,0.00,1249500.00,'INR','SYSTEM',NULL,'SUCCESS','Bank service charge');