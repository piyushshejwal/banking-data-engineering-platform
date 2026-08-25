 
USE bank_oltp;

INSERT INTO card_transactions
(
    card_transaction_reference,
    card_id,
    customer_id,
    account_id,
    transaction_date,
    merchant_id,
    transaction_type,
    amount,
    currency_code,
    channel,
    location,
    transaction_status,
    authorization_code
)
VALUES
(
    'CTXN00000001',
    1,
    1,
    1,
    '2026-02-01 10:15:00',
    NULL,
    'PURCHASE',
    2500.00,
    'INR',
    'POS',
    'Mumbai',
    'SUCCESS',
    'AUTH100001'
),
(
    'CTXN00000002',
    2,
    2,
    2,
    '2026-02-03 14:20:00',
    NULL,
    'PURCHASE',
    4800.00,
    'INR',
    'POS',
    'Pune',
    'SUCCESS',
    'AUTH100002'
),
(
    'CTXN00000003',
    3,
    3,
    3,
    '2026-02-05 18:45:00',
    NULL,
    'PURCHASE',
    12500.00,
    'INR',
    'ONLINE',
    'Mumbai',
    'SUCCESS',
    'AUTH100003'
),
(
    'CTXN00000004',
    4,
    6,
    6,
    '2026-02-08 09:30:00',
    NULL,
    'PURCHASE',
    1800.00,
    'INR',
    'POS',
    'Bengaluru',
    'SUCCESS',
    'AUTH100004'
),
(
    'CTXN00000005',
    5,
    9,
    9,
    '2026-02-10 21:15:00',
    NULL,
    'PURCHASE',
    22000.00,
    'INR',
    'ONLINE',
    'Hyderabad',
    'FAILED',
    NULL
);