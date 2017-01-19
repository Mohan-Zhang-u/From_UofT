DROP TABLE IF EXISTS manager CASCADE;
CREATE TABLE manager(
eid int PRIMARY KEY,
name varchar(30),
dept_id int,
address varchar(30)
);

DROP TABLE IF EXISTS department CASCADE;
CREATE TABLE department(
id int PRIMARY KEY,
name varchar(30),
manager_id int
);

ALTER TABLE manager ADD CONSTRAINT manager_dep_id FOREIGN KEY (dept_id) REFERENCES department(id) DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE department ADD CONSTRAINT dep_manager_id FOREIGN KEY (manager_id) REFERENCES manager(eid) DEFERRABLE INITIALLY DEFERRED;

BEGIN;INSERT INTO manager VALUES (1, 'Bob', 1, 'address1'); 
INSERT INTO department VALUES (1, 'sales', 1);
COMMIT;