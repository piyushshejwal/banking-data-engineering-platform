 
USE bank_oltp;

INSERT INTO fraud_alerts
(
    alert_reference,
    customer_id,
    account_id,
    transaction_id,
    alert_type,
    risk_score,
    alert_timestamp,
    alert_status,
    description,
    resolved_at
)
VALUES
(
    'FRAUD000001',
    1,
    1,
    2,
    'UNUSUAL_AMOUNT',
    72.50,
    '2026-01-06 11:31:00',
    'UNDER_REVIEW',
    'Transaction amount significantly higher than customer average',
    NULL
),
(
    'FRAUD000002',
    3,
    3,
    4,
    'HIGH_VALUE_TRANSACTION',
    91.00,
    '2026-01-08 09:46:00',
    'CONFIRMED',
    'High value transaction detected',
    '2026-01-08 15:20:00'
),
(
    'FRAUD000003',
    7,
    7,
    8,
    'UNUSUAL_LOCATION',
    84.00,
    '2026-01-18 12:05:00',
    'OPEN',
    'ATM transaction from unusual location',
    NULL
),
(
    'FRAUD000004',
    9,
    9,
    NULL,
    'MULTIPLE_FAILED_ATTEMPTS',
    67.00,
    '2026-02-02 21:30:00',
    'FALSE_POSITIVE',
    'Multiple failed authentication attempts',
    '2026-02-03 09:00:00'
);