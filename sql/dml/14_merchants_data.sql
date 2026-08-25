USE bank_oltp;

INSERT INTO merchants
(
    merchant_code,
    merchant_name,
    merchant_category,
    city_id,
    country_id,
    registration_date,
    merchant_status
)
VALUES
('MER0001', 'Reliance Digital Mumbai', 'Electronics', 1, 1, '2021-03-15', 'ACTIVE'),
('MER0002', 'Croma Pune', 'Electronics', 2, 1, '2022-05-20', 'ACTIVE'),
('MER0003', 'Apollo Pharmacy', 'Healthcare', 1, 1, '2020-08-10', 'ACTIVE'),
('MER0004', 'Shoppers Stop', 'Retail', 1, 1, '2019-11-12', 'ACTIVE'),
('MER0005', 'BigBasket Bengaluru', 'Grocery', 6, 1, '2021-01-18', 'ACTIVE'),
('MER0006', 'Myntra', 'Fashion', 6, 1, '2020-06-25', 'ACTIVE'),
('MER0007', 'Swiggy Hyderabad', 'Food', 14, 1, '2019-04-10', 'ACTIVE'),
('MER0008', 'Amazon India', 'E-Commerce', 5, 1, '2018-02-05', 'ACTIVE'),
('MER0009', 'MakeMyTrip', 'Travel', 5, 1, '2019-07-21', 'ACTIVE'),
('MER0010', 'IKEA Hyderabad', 'Home & Furniture', 14, 1, '2023-01-14', 'ACTIVE');


ALTER TABLE card_transactions
ADD CONSTRAINT fk_card_transactions_merchant
FOREIGN KEY (merchant_id)
REFERENCES merchants(merchant_id);

UPDATE card_transactions
SET merchant_id = CASE card_transaction_id
    WHEN 1 THEN 1
    WHEN 2 THEN 2
    WHEN 3 THEN 8
    WHEN 4 THEN 5
    WHEN 5 THEN 7
END
WHERE card_transaction_id IN (1,2,3,4,5);