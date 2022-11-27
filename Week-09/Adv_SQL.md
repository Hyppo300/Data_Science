Basic SQL queries for creating database, showing specific data, insering data into tables, updating and deleting data.
```sql
create database flora; 
show database;
show tables;
CREATE TABLE Flora (
    Name varchar(255),
    ID int not null,
    Season varchar(255),
    Types varchar(255)
);
select * from Types;
select Name, ID from Types 
where ID<3;
INSERT INTO Types 
VALUES ("Jasmin",6,"Fall",4);
SELECT * from Types 
where ID=6;
UPDATE Types set Types=8 
where Name=Tomato;
Insert INTO Types(Name,ID, Season, Types) 
VALUES ("ZLLBURY\'s",11,"Spring",6);
describe Types;
delete FROM Types WHERE ID=5;
drop table Types;
```
## Database Structures
- MyISAM (good for speed but does not support referential integrity. Default storage engine for MySQL.
- Innodb is transaction-safe engine. Allows row-level locking, one can use other rows while other one is being updated.
```sql
alter TABLE Types
change Name Plant_Name varchar(255);
alter table Types
add column Breeed varchar(255);
select * from Types;
alter table Types
modify Season varchar(254);
describe Types;
check table Types;

```
