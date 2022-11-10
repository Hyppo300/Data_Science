CREATE TABLE branch (
  branch_id INT PRIMARY KEY,
  branch_name VARCHAR(30),
  mgr_id INT,
  mgr_start_date DATE,
  FOREIGN KEY(mgr_id) REFERENCES staff(waiter_id) ON DELETE SET NULL
);

ALTER TABLE staff
ADD FOREIGN KEY(branch_id)
REFERENCES branch(branch_id)
ON DELETE SET NULL;

ALTER TABLE staff
ADD FOREIGN KEY(super_id)
REFERENCES staff(waiter_id)
ON DELETE SET NULL;

ALTER TABLE customers
ADD FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE SET NULL;

CREATE TABLE works_with (
  emp_id INT,
  client_id INT,
  total_sales INT,
  PRIMARY KEY(emp_id, client_id),
  FOREIGN KEY(emp_id) REFERENCES staff(waiter_id) ON DELETE CASCADE,
  FOREIGN KEY(client_id) REFERENCES customers(cust_id) ON DELETE CASCADE
);

CREATE TABLE branch_supplier (
  branch_id INT,
  supplier_name VARCHAR(40),
  supply_type VARCHAR(40),
  PRIMARY KEY(branch_id, supplier_name),
  FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
);

INSERT INTO employee VALUES(100, 'David', 2, 'Wallace','Mock',2, NULL);

INSERT INTO staff VALUES(101, 'Jan',  3,'Levinson', 'Fling', 1, 100);


INSERT INTO staff VALUES(102, 'Michael',4,  'Scott','Maggy', 1, 100);

INSERT INTO branch VALUES(4, 'Jinnah Park', 102, '1992-04-06');

UPDATE staff
SET branch_id = 2
WHERE waiter_id = 102;

INSERT INTO branch_supplier VALUES(2, 'Hammer Mill', 'Paper');
INSERT INTO branch_supplier VALUES(2, 'Uni-ball', 'Writing Utensils');
INSERT INTO branch_supplier VALUES(4, 'Patriot Paper', 'Paper');
INSERT INTO branch_supplier VALUES(2, 'J.T. Forms & Labels', 'Custom Forms');
INSERT INTO branch_supplier VALUES(4, 'Uni-ball', 'Writing Utensils');
INSERT INTO branch_supplier VALUES(4, 'Hammer Mill', 'Paper');
INSERT INTO branch_supplier VALUES(4, 'Stamford Lables', 'Custom Forms');

INSERT INTO works_with VALUES(101, 400, 55000);
INSERT INTO works_with VALUES(102, 401, 267000);
INSERT INTO works_with VALUES(4, 402, 22500);
INSERT INTO works_with VALUES(3, 403, 5000);
INSERT INTO works_with VALUES(1, 403, 12000);
INSERT INTO works_with VALUES(102, 404, 33000);
INSERT INTO works_with VALUES(100, 405, 26000);
INSERT INTO works_with VALUES(2, 406, 15000);

INSERT INTO customers VALUES(400, 'Dunmore',' Highschool', 3,2);
INSERT INTO customers VALUES(401, 'Lackawana',' Country', 3,2);
INSERT INTO customers VALUES(402, 'Fed','Ex', 3,2);
INSERT INTO customers VALUES(403, 'John Daly Law',' LLC', 3,4);
INSERT INTO customers VALUES(404, 'Scranton',' Whitepages', 2,4);
INSERT INTO customers VALUES(405, 'Times',' Newspaper', 3,1);
INSERT INTO customers VALUES(406, 'Fed','Ex', 2,1);

--Basic Queries
SELECT * FROM staff;
select * from customers;
select * from branch order by branch_id;
select * from branch_supplier order by supplier_name ASC;
select * from staff LIMIT 5;
select DISTINCT super_id from staff;
SELECT *
FROM staff
WHERE waiter IN ('Hanik') AND supplier IN('Hanry');

--Functions
SELECT SUM(total_sales)
FROM works_with
GROUP BY client_id;

SELECT COUNT(super_id)
FROM staff;

SELECT *
FROM customers
WHERE first_name LIKE '%LLC';


SELECT *
FROM branch_supplier
WHERE supplier_name LIKE '% Label%';

SELECT staff.waiter AS Employee_Branch_Names
FROM staff
UNION
SELECT branch.branch_name
FROM branch;

SELECT staff.waiter_id, staff.supplier, branch.branch_name
FROM staff
JOIN branch    
ON staff.waiter_id = branch.mgr_id;
