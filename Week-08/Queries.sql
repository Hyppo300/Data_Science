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

SELECT * FROM public.customers
ORDER BY cust_id ASC ;

CREATE TABLE menu (
   itme_id INT AUTO_INCREMENT ,
	item_name VARCHAR DEFAULT 'Undecided' UNIQUE,
	item_price INT

);

INSERT INTO public.menu VALUES(1,'Spaghetti',980);
INSERT INTO public.menu VALUES(4,'Mushroom Pizza',1500);
INSERT INTO public.menu VALUES(2,'Chowmin',1000);
INSERT INTO public.menu VALUES(3,'Brocolli Pasta',12000);

select * from public.staff;
UPDATE public.staff SET supp_id=29 WHERE supplier='Hang';


select * from public.menu;
DELETE FROM public.menu WHERE itme_id=2 AND item_name='Chowmin';
