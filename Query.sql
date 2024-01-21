SELECT * FROM sales;

CREATE TABLE customer(
ID INT,
NAME VARCHAR(20),
AGE int,
State varchar(5),
salary decimal(18,2),
primary key (ID));

DESC customer;

INSERT INTO customer()
VALUES
(1,"Ramesh",32,"Guj",25263.12),
(2,"Khilan",33,"BR",12659),
(3,"Vijay",30,"UP",32658.55),
(4,"Hardik",27,"MP",44125.99),
(5,"Komal",25,"MH", 41025);

SELECT * FROM customer;

# to print selective column we can give tthe column name
SELECT NAME, salary FROM customer;


-- suppose there is an increament in the salary

UPDATE customer
SET salary=50000
WHERE ID=2;

DELETE FROM customer 
WHERE ID=1;

-- ALTER command

ALTER TABLE customer
ADD city VARCHAR(20); 

SELECT * FROM customer;

UPDATE customer
SET city = 'Ahemdabad'
WHERE State = 'Guj';

UPDATE customer
SET city = 'Pune'
WHERE State = 'MH';

UPDATE customer
SET city = 'Patna'
WHERE State = 'BR';

UPDATE customer
SET city = 'Noida'
WHERE State = 'UP';

SELECT * FROM customer;

UPDATE customer
SET city = 'Ujjain'
WHERE State = 'MP';

truncate TABLE customer;

DESC customer;

SELECT * FROM customer;

INSERT INTO customer
VALUES
(1,"Ramesh",32,"Guj",25263.12, 'Surat'),
(2,"Khilan",33,"BR",12659, 'Bhopal'),
(3,"Vijay",30,"UP",32658.55, 'Patna'),
(4,"Hardik",27,"MP",44125.99, 'Ujjain'),
(5,"Komal",25,"MH", 41025, 'Pune');

DROP TABLE customer;

DESC customer;

sql_store

--WHERE

SELECT first_name, last_name, city FROM customers WHERE points >customerscustomers= 1000;

SELECT * FROM customers;

WHERE state='CA'
ORDER BY first_name;

sql_storesql_store

SELECT * FROM customers;



-- employee salary

SELECT * FROM employees;

-- print the everage salary given to teh employeee in sql hr
-- Tell me the name of employee who gets maximum salary

SELECT AVG(salary) AS Average_salary
FROM employees;

sql_hremployees

SELECT * FROM employees;

SELECT AVG(salary) AS Average_salary
FROM employees;

select * FROM employees;
ORDER BY salary DESC LIMIT 1;

SELECT * from offices;

SELECT state, COUNT(city)
FROM offices
GROUP BY state;

sql_inventory

SELECT NAME, sale_mini
quantity_in_stock*unit price
AS total_price 
FROM products;

SELECT * from sales;

-- print the total quantity ordered by each customer

SELECT CUSTOMER NAME, SUM(Quantity) AS total_quantity_ordered
FROM PRODUCT
GROUP BY CUSTOMER NAME;

SELECT * from sale_mini;

SELECT CustomerName, sum(Quantity)
FROM sale_mini
GROUP BY CustomerName;

-- Get top 3 customers

SELECT CustomerName, SUM(Quantity)
FROM sale_mini
GROUP BY CustomerName
ORDER BY SUM(Quantity) DESC
LIMIT 3;

select * from sale_mini order by Quantity desc limit 3;

-- calculate how much in quantity a customer ordered a product

SELECT CustomerName, Product, SUM(Quantity)
FROM sale_mini
GROUP BY CustomerName,Product;












