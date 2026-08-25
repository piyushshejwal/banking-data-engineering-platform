 USE bank_oltp;

-- Regions
INSERT INTO regions (region_code, region_name)
VALUES
('WR', 'West Region'),
('NR', 'North Region'),
('SR', 'South Region'),
('ER', 'East Region');

-- Branches
INSERT INTO branches
(
    branch_code,
    branch_name,
    branch_type,
    city_id,
    region_id,
    manager_name,
    opening_date,
    status
)
VALUES
('MUM001', 'Mumbai Main Branch', 'MAIN', 1, 1, 'Rajesh Patil', '2015-06-15', 'ACTIVE'),
('PUN001', 'Pune Central Branch', 'MAIN', 2, 1, 'Neha Kulkarni', '2017-03-20', 'ACTIVE'),
('NAS001', 'Nashik City Branch', 'STANDARD', 3, 1, 'Amit Joshi', '2019-08-10', 'ACTIVE'),
('NAG001', 'Nagpur Branch', 'STANDARD', 4, 1, 'Vikas Deshmukh', '2020-01-12', 'ACTIVE'),
('DEL001', 'New Delhi Main Branch', 'MAIN', 5, 2, 'Sanjay Verma', '2014-11-05', 'ACTIVE'),
('BLR001', 'Bengaluru Central Branch', 'MAIN', 6, 3, 'Priya Rao', '2016-09-18', 'ACTIVE'),
('MYS001', 'Mysuru Branch', 'STANDARD', 7, 3, 'Vijay Rao', '2018-05-15', 'ACTIVE'),
('CHE001', 'Chennai Central Branch', 'STANDARD', 8, 3, 'Karthik Iyer', '2018-07-25', 'ACTIVE'),
('COI001', 'Coimbatore Branch', 'STANDARD', 9, 3, 'Arun Kumar', '2019-03-10', 'ACTIVE'),
('AMD001', 'Ahmedabad Branch', 'STANDARD', 10, 1, 'Rohan Shah', '2021-02-14', 'ACTIVE'),
('SUR001', 'Surat Branch', 'STANDARD', 11, 1, 'Jay Patel', '2022-01-20', 'ACTIVE');