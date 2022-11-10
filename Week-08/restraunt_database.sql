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
