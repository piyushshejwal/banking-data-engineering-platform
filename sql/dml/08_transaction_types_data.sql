 
USE bank_oltp;

INSERT INTO transaction_types
(transaction_code,transaction_name,transaction_direction,description)
VALUES
('CASH_DEPOSIT','Cash Deposit','CREDIT','Cash deposited into account'),
('CASH_WITHDRAWAL','Cash Withdrawal','DEBIT','Cash withdrawn from account'),
('UPI','UPI Transfer','TRANSFER','UPI based transaction'),
('NEFT','NEFT Transfer','TRANSFER','National Electronic Funds Transfer'),
('RTGS','RTGS Transfer','TRANSFER','Real Time Gross Settlement'),
('IMPS','IMPS Transfer','TRANSFER','Immediate Payment Service'),
('POS','Point of Sale','DEBIT','Card based merchant transaction'),
('ATM','ATM Transaction','DEBIT','ATM cash withdrawal'),
('INTEREST_CREDIT','Interest Credit','CREDIT','Interest credited to account'),
('BANK_CHARGE','Bank Charge','DEBIT','Bank service charge');