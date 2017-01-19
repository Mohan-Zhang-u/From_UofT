---=================
--Example 1. rip-off bars
-----===============

create table bars (bar varchar(10), beer varchar(10), price numeric);
CREATE TABLE
insert into bars values ('A', 'b1', 10);
INSERT 0 1
insert into bars values ('B', 'b2', 12);

create table bad (bar varchar(10));
CREATE TABLE


CREATE OR REPLACE FUNCTION log_ripoff_bars()
  RETURNS trigger AS
'
BEGIN
 IF NEW.price > OLD.price +1 THEN
 INSERT INTO bad (bar)
 VALUES(NEW.bar);
 END IF;
 
 RETURN NEW;
END;
'
LANGUAGE plpgsql;


CREATE TRIGGER audit_bars 
	AFTER UPDATE OF price ON bars  
	FOR each ROW
    EXECUTE PROCEDURE log_ripoff_bars();
        
update bars set price=14 where bar='B' AND beer ='b2';
       
drop trigger audit_bars on bars;  
drop function log_ripoff_bars();

-----==================
--Example 2. Record change
-----===================

--======================================
--audit triggers 
--======================================     
create table A (s varchar(10), n integer);

--row-level
--======================================  
create table log_A_row (time_stamp date, user_name varchar(50), action varchar(50));


CREATE OR REPLACE FUNCTION A_row_fn() RETURNS TRIGGER AS $a_audit_row$
    BEGIN
        --
        -- Create a row in log_A_row to reflect the operation performed on A,
        -- make use of the special variable TG_OP to work out the operation.
        --
        IF (TG_OP = 'DELETE') THEN
            INSERT INTO log_A_row VALUES (now(), user, 'Deleted '||OLD.s); 
            RETURN OLD;
        ELSIF (TG_OP = 'UPDATE') THEN
            INSERT INTO log_A_row VALUES (now(), user, 'Updated '||OLD.s || ' to ' || NEW.s);  
            RETURN NEW;
        ELSIF (TG_OP = 'INSERT') THEN
            INSERT INTO log_A_row VALUES (now(), user, 'Inserted '||NEW.s); 
            RETURN NEW;
        END IF;
        RETURN NULL; -- result is ignored since this is an AFTER trigger
    END;
$a_audit_row$ LANGUAGE plpgsql;

CREATE TRIGGER a_audit_row
AFTER INSERT OR UPDATE OR DELETE ON A
    FOR EACH ROW 
	EXECUTE PROCEDURE A_row_fn();

insert into A values ('x', 1);
insert into A values ('y', 2);
update A set s='z' where s='y';

select * from log_a_row;
 time_stamp | user_name |     action     
------------+-----------+----------------
 2016-07-06 | mgbarsky  | Inserted x
 2016-07-06 | mgbarsky  | Inserted y
 2016-07-06 | mgbarsky  | Updated y to z

--statement-level
--======================================  
create table log_A_stmt (time_stamp date, user_name varchar(50), action varchar(50));


CREATE OR REPLACE FUNCTION A_stmt_fn() RETURNS TRIGGER AS $a_audit_stmt$
    BEGIN
        --
        -- Create a row in log_A_stmt to reflect the operation performed on A,
        -- make use of the special variable TG_OP to work out the operation.
        --
        IF (TG_OP = 'DELETE') THEN
            INSERT INTO log_A_stmt VALUES (now(), user, 'Deleted'); 
            RETURN OLD;
        ELSIF (TG_OP = 'UPDATE') THEN
            INSERT INTO log_A_stmt VALUES (now(), user, 'Updated');  
            RETURN NEW;
        ELSIF (TG_OP = 'INSERT') THEN
            INSERT INTO log_A_stmt VALUES (now(), user, 'Inserted'); 
            RETURN NEW;
        END IF;
        RETURN NULL; -- result is ignored since this is an AFTER trigger
    END;
$a_audit_stmt$ LANGUAGE plpgsql;

---not using for each row here
CREATE TRIGGER a_audit_stmt
AFTER INSERT OR UPDATE OR DELETE ON A
	EXECUTE PROCEDURE A_stmt_fn();

insert into A select * from A;

select * from log_A_stmt;
 time_stamp | user_name |  action  
------------+-----------+----------
 2016-07-06 | mgbarsky  | Inserted
(1 row)

select * from log_A_row;
 time_stamp | user_name |     action     
------------+-----------+----------------
 2016-07-06 | mgbarsky  | Inserted x
 2016-07-06 | mgbarsky  | Inserted z

	
drop trigger a_audit_stmt ON A;
drop trigger a_audit_row ON A;
