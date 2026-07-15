show databases;
CREATE DATABASE dbms_lab;
USE dbms_lab;
 CREATE TABLE TAXPAYER(taxpayer_id INT PRIMARY KEY,
 pan_number VARCHAR(10)NOT NULL UNIQUE,
 full_name VARCHAR(100) NOT NULL,
 date_of_birth DATE NOT NULL,
 occupation VARCHAR(50) NOT NULL,
 annual_income DECIMAL(12,2) NOT NULL,
 email VARCHAR(100) UNIQUE,
 is_active BOOLEAN);
 INSERT INTO TAXPAYER VALUES(101,'ABCDE1234F','Ravi Kumar','1995-06-15','Software Engineering',850000.00,'ravi.kumar@example.com',TRUE),
 (102,'BCDEF2345G','Priya Sharma','1992-11-22','Doctor',1200000.00,'priya.sharma@example.com',TRUE),
 (103,'CDEFG3456H','Arjun Reddy','1988-03-10','Business owner',1800000.00,'arjun.reddy@example.com',TRUE),
 (104,'DEFGH4567J','Sneha Patel','1998-08-05','Teacher',620000.00,'sneha.patel@example.com',TRUE),
 (105,'EFGHJ5678K','Kiran rao','1990-01-18','Freelancer',750000.00,'kiran.rao@example.com',TRUE),
 (106,'FGHJK6789L','Meera Singh','1985-12-30','Consultant',1500000.00,'meera.singh@example.com',FALSE);
 INSERT INTO TAXPAYER VALUES(107,'GHJKL8901M','Jessica Gummadi','2008-11-27','Technician',1600000,'jessica.gummadi@example.com',TRUE);
 UPDATE TAXPAYER SET annual_income=950000.00 WHERE taxpayer_id=101;
  UPDATE TAXPAYER SET occupation='Software Consultant' WHERE taxpayer_id=105;
   UPDATE TAXPAYER SET is_active=TRUE WHERE taxpayer_id=106;
   ALTER TABLE TAXPAYER ADD(Rental_Income DECIMAL(12,2));
   
SELECT * FROM TAXPAYER;
USE dbms_lab;
CREATE TABLE Income_Category(category_id INT PRIMARY KEY,
 category_name VARCHAR(50)NOT NULL UNIQUE,
 description VARCHAR(200) NOT NULL,
 taxable BOOLEAN NOT NULL);
 INSERT INTO Income_Category VALUES(1,'Salary','Income received from employment',TRUE),
 (2,'Business','Income earned from business activities',TRUE),
 (3,'House Property','Income received from property or rent',TRUE),
 (4,'Capital Gain','Income from transfer of eligible assets',TRUE),
 (5,'Other Sources','Income such as bank interest',TRUE),
 (6,'Agicultural Income','Income from eligible agricultural activities',FALSE);
 SELECT * FROM Income_Category;
 USE dbms_lab;
  CREATE TABLE Financial_Year(year_id INT PRIMARY KEY,
 year_label VARCHAR(9)NOT NULL UNIQUE,
 start_date DATE NOT NULL,
 end_date DATE NOT NULL,
 finding_deadline DATE,
 is_current BOOLEAN NOT NULL);
  INSERT INTO Financial_Year VALUES(1,'2020-2021','2021-04-01','2021-03-31','2021-07-31',FALSE),
 (2,'2021-2022','2022-04-01','2022-03-31','2022-07-31',FALSE),
 (3,'2022-2023','2022-04-01','2023-03-31','2023-07-31',FALSE),
 (4,'2023-2024','2023-04-01','2024-03-31','2024-07-31',FALSE),
 (5,'2024-2025','2024-04-01','2025-03-31','2025-07-31',FALSE),
 (6,'2025-2026','2025-04-01','2026-03-31','2026-07-31',TRUE);
 SELECT * FROM Financial_Year;
 Use dbms_lab;
 CREATE TABLE Income_Record(income_id INT PRIMARY KEY,
 taxpayer_id INT NOT NULL,
 income_source VARCHAR(100) NOT NULL,
 category_name VARCHAR(50)  NOT NULL,
 amount DECIMAL(12,2) NOT NULL,
 received_date DATE NOT NULL,
 financial_year VARCHAR(9) NOT NULL);
  INSERT INTO Income_Record VALUES(1001,101,'TechNova Solutions','Salary',850000.00,'2026-03-31','2025-2026'),
 (1002,102,'City Care Hospital','Salary',1200000.00,'2026-03-31','2025-2026'),
 (1003,103,'Reddy Enterprises','Business',1800000.00,'2026-03-31','2025-2026'),
 (1004,104,'Sunrise School','Salary',620000.00,'2026-03-31','2025-2026'),
 (1005,105,'Web Design Projects','Business',750000.00,'2026-03-31','2025-2026'),
 (1006,106,'Professional Consulting','Business',1500000.00,'2026-03-31','2025-2026');
 SELECT * FROM Income_Record;
