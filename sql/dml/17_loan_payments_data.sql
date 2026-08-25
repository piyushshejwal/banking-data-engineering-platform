 
USE bank_oltp;

INSERT INTO loan_payments
(
    payment_reference,
    loan_id,
    payment_date,
    principal_amount,
    interest_amount,
    penalty_amount,
    total_amount,
    payment_status
)
VALUES
('LPAY000001', 1, '2026-01-05', 18000.00, 35000.00, 0.00, 53000.00, 'SUCCESS'),
('LPAY000002', 1, '2026-02-05', 18200.00, 34800.00, 0.00, 53000.00, 'SUCCESS'),
('LPAY000003', 2, '2026-01-10', 9000.00, 7800.00, 0.00, 16800.00, 'SUCCESS'),
('LPAY000004', 2, '2026-02-10', 9100.00, 7700.00, 500.00, 17300.00, 'SUCCESS'),
('LPAY000005', 3, '2026-01-15', 15000.00, 7000.00, 0.00, 22000.00, 'SUCCESS'),
('LPAY000006', 4, '2026-01-20', 8000.00, 10000.00, 0.00, 18000.00, 'SUCCESS'),
('LPAY000007', 5, '2026-01-25', 20000.00, 15000.00, 0.00, 35000.00, 'SUCCESS'),
('LPAY000008', 6, '2026-02-01', 7000.00, 5200.00, 0.00, 12200.00, 'SUCCESS');