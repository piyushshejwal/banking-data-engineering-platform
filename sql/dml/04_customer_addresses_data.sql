 USE bank_oltp;

INSERT INTO customer_addresses
(customer_id,address_type,address_line1,address_line2,city_id,pincode,is_primary,effective_from)
VALUES
(1,'HOME','12 MG Road',NULL,1,'400001',TRUE,'2021-06-15'),
(1,'OFFICE','45 Business Park',NULL,1,'400051',FALSE,'2022-01-10'),
(2,'HOME','22 FC Road',NULL,2,'411004',TRUE,'2022-01-10'),
(3,'HOME','8 Powai Road',NULL,1,'400076',TRUE,'2020-03-18'),
(3,'OFFICE','100 Andheri East',NULL,1,'400069',FALSE,'2021-05-01'),
(4,'HOME','15 Anna Salai',NULL,8,'600002',TRUE,'2023-07-25'),
(5,'HOME','22 Connaught Place',NULL,5,'110001',TRUE,'2019-09-05'),
(6,'HOME','10 MG Road',NULL,6,'560001',TRUE,'2021-11-12'),
(7,'HOME','25 C G Road',NULL,10,'380006',TRUE,'2024-02-20'),
(8,'HOME','18 MI Road',NULL,12,'302001',TRUE,'2025-01-15'),
(9,'HOME','7 Marine Drive',NULL,1,'400002',TRUE,'2020-12-07'),
(10,'HOME','44 Jubilee Hills',NULL,14,'500033',TRUE,'2026-01-12'),
(11,'HOME','9 Banjara Hills',NULL,14,'500034',TRUE,'2018-04-19'),
(12,'HOME','30 College Road',NULL,3,'422005',TRUE,'2021-08-30'),
(13,'HOME','55 AB Road',NULL,21,'452001',TRUE,'2019-05-21'),
(14,'HOME','17 Koregaon Park',NULL,2,'411001',TRUE,'2025-09-10'),
(15,'HOME','12 Hitech City',NULL,14,'500081',TRUE,'2024-06-11');
