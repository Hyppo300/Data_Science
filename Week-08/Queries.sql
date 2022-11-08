CREATE TABLE staff (
	waiter_id INT,
    waiter VARCHAR(30),
	Supp_id VARCHAR(30),
	Supplier VARCHAR(40),
	Cleaner VARCHAR(30),
	PRIMARY KEY(waiter_id)

);

CREATE TABLE customers(
  cust_id INT PRIMARY KEY,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  birth_day DATE,
  super_id INT
	
);
