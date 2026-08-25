 
USE bank_oltp;

INSERT INTO customers
(customer_number, first_name, middle_name, last_name, date_of_birth, gender,
 email, phone, customer_type, customer_status, registration_date,
 risk_category, kyc_status, home_branch_id)
VALUES
('CUST000001','Amit',NULL,'Sharma','1992-05-14','MALE','amit.sharma@example.com','9000000001','INDIVIDUAL','ACTIVE','2021-06-15','LOW','VERIFIED',1),
('CUST000002','Priya',NULL,'Patil','1995-09-22','FEMALE','priya.patil@example.com','9000000002','INDIVIDUAL','ACTIVE','2022-01-10','LOW','VERIFIED',2),
('CUST000003','Rahul',NULL,'Mehta','1988-11-03','MALE','rahul.mehta@example.com','9000000003','PREMIUM','ACTIVE','2020-03-18','MEDIUM','VERIFIED',1),
('CUST000004','Sneha',NULL,'Iyer','1997-02-11','FEMALE','sneha.iyer@example.com','9000000004','INDIVIDUAL','ACTIVE','2023-07-25','LOW','PENDING',8),
('CUST000005','Vikas',NULL,'Verma','1985-12-19','MALE','vikas.verma@example.com','9000000005','CORPORATE','ACTIVE','2019-09-05','HIGH','VERIFIED',5),
('CUST000006','Neha',NULL,'Rao','1993-04-27','FEMALE','neha.rao@example.com','9000000006','PREMIUM','ACTIVE','2021-11-12','MEDIUM','VERIFIED',6),
('CUST000007','Karan',NULL,'Shah','1990-08-08','MALE','karan.shah@example.com','9000000007','INDIVIDUAL','ACTIVE','2024-02-20','LOW','PENDING',10),
('CUST000008','Pooja',NULL,'Gupta','1996-06-30','FEMALE','pooja.gupta@example.com','9000000008','INDIVIDUAL','ACTIVE','2025-01-15','LOW','VERIFIED',9),
('CUST000009','Arjun',NULL,'Nair','1987-10-16','MALE','arjun.nair@example.com','9000000009','PREMIUM','ACTIVE','2020-12-07','MEDIUM','VERIFIED',11),
('CUST000010','Riya',NULL,'Kapoor','1999-03-25','FEMALE','riya.kapoor@example.com','9000000010','INDIVIDUAL','ACTIVE','2026-01-12','LOW','PENDING',7),
('CUST000011','Suresh',NULL,'Desai','1978-07-14','MALE','suresh.desai@example.com','9000000011','CORPORATE','ACTIVE','2018-04-19','HIGH','VERIFIED',10),
('CUST000012','Kavita',NULL,'Joshi','1991-01-09','FEMALE','kavita.joshi@example.com','9000000012','INDIVIDUAL','INACTIVE','2021-08-30','LOW','VERIFIED',3),
('CUST000013','Manish',NULL,'Agarwal','1984-09-17','MALE','manish.agarwal@example.com','9000000013','PREMIUM','ACTIVE','2019-05-21','MEDIUM','VERIFIED',4),
('CUST000014','Nisha',NULL,'Kulkarni','1998-12-02','FEMALE','nisha.kulkarni@example.com','9000000014','INDIVIDUAL','ACTIVE','2025-09-10','LOW','VERIFIED',2),
('CUST000015','Deepak',NULL,'Reddy','1989-06-18','MALE','deepak.reddy@example.com','9000000015','NRI','ACTIVE','2024-06-11','MEDIUM','VERIFIED',10);