 
USE bank_oltp;

INSERT INTO kyc_records
(
    customer_id,
    kyc_type,
    verification_date,
    verification_status,
    risk_level,
    expiry_date,
    verification_reference,
    remarks
)
VALUES
(1, 'FULL_KYC', '2021-06-20', 'VERIFIED', 'LOW',
 '2027-06-20', 'KYC000001', 'KYC successfully verified'),

(2, 'FULL_KYC', '2022-01-15', 'VERIFIED', 'LOW',
 '2028-01-15', 'KYC000002', 'KYC successfully verified'),

(3, 'FULL_KYC', '2020-03-25', 'VERIFIED', 'MEDIUM',
 '2026-03-25', 'KYC000003', 'Enhanced verification completed'),

(4, 'FULL_KYC', '2023-07-30', 'PENDING', 'LOW',
 NULL, 'KYC000004', 'Documents under review'),

(5, 'BUSINESS_KYC', '2019-09-10', 'VERIFIED', 'HIGH',
 '2026-09-10', 'KYC000005', 'Corporate account verification'),

(6, 'FULL_KYC', '2021-11-18', 'VERIFIED', 'MEDIUM',
 '2027-11-18', 'KYC000006', 'Enhanced verification completed'),

(7, 'FULL_KYC', '2024-02-25', 'VERIFIED', 'LOW',
 '2027-02-25', 'KYC000007', 'KYC successfully verified'),

(8, 'FULL_KYC', '2025-01-20', 'VERIFIED', 'LOW',
 '2028-01-20', 'KYC000008', 'KYC successfully verified'),

(9, 'FULL_KYC', '2020-12-15', 'VERIFIED', 'MEDIUM',
 '2026-12-15', 'KYC000009', 'Enhanced verification completed'),

(10, 'FULL_KYC', '2026-01-15', 'PENDING', 'LOW',
 NULL, 'KYC000010', 'Awaiting document verification');