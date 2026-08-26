 
USE bank_oltp;

INSERT INTO atm_transactions
(
    atm_transaction_reference,
    atm_id,
    account_id,
    card_id,
    transaction_date,
    transaction_type,
    amount,
    response_code,
    transaction_status
)
VALUES
('ATMTRX000001', 1, 1, 1, '2026-02-01 09:15:00',
 'CASH_WITHDRAWAL', 10000.00, '00', 'SUCCESS'),

('ATMTRX000002', 2, 2, 2, '2026-02-03 11:30:00',
 'CASH_WITHDRAWAL', 5000.00, '00', 'SUCCESS'),

('ATMTRX000003', 3, 3, 3, '2026-02-05 15:45:00',
 'CASH_WITHDRAWAL', 25000.00, '00', 'SUCCESS'),

('ATMTRX000004', 4, 4, 4, '2026-02-07 18:20:00',
 'CASH_WITHDRAWAL', 8000.00, '00', 'SUCCESS'),

('ATMTRX000005', 5, 7, NULL, '2026-02-09 10:10:00',
 'CASH_DEPOSIT', 50000.00, '00', 'SUCCESS'),

('ATMTRX000006', 6, 6, 4, '2026-02-10 20:15:00',
 'CASH_WITHDRAWAL', 15000.00, '00', 'SUCCESS'),

('ATMTRX000007', 7, 9, 5, '2026-02-12 13:25:00',
 'CASH_WITHDRAWAL', 30000.00, '00', 'SUCCESS'),

('ATMTRX000008', 10, 10, NULL, '2026-02-14 16:40:00',
 'CASH_DEPOSIT', 100000.00, '00', 'SUCCESS');