---=================
--Q 1. 
-----===============

drop table if exists rich_execs;
create table rich_execs(name varchar(30));

create or replace function t_richexecs()
	returns trigger
	as
	'
	begin
		if new.netWorth > 10000000 
		then insert into rich_execs VALUES(new.name);
		end if;


	 	RETURN NEW;
	END;
'
LANGUAGE plpgsql;


create trigger t_richexecs
after update or insert or delete on MovieExec
for each row
EXECUTE PROCEDURE t_richexecs();

INSERT INTO MovieExec(name, address, cert, netWorth)
VALUES('M Griffith', '34 Boston Blvd', 300, 30000);

---=================
--Q 2. 
-----===============




CREATE OR REPLACE FUNCTION make_sure_f()
returns trigger
	as
	'
	begin
		if (select netWorth from MovieExec where MovieExec.cert = new.presCert) < 10000000 
		then delete from Studio where presCert = new.presCert;
		end if;
	 	RETURN null;
	END;
'
LANGUAGE plpgsql;

CREATE trigger makesuref
After INSERT OR UPDATE ON Studio
for each row
EXECUTE PROCEDURE make_sure_f();



INSERT INTO Studio (studioname, address, presCert)
VALUES ('Disneyyyy', 'M Griffith', 300);

INSERT INTO Studio (studioname, address, presCert)
VALUES ('Disneyyyy', 'N Griffith', 301);


drop trigger makesuref on Studio;
drop FUNCTION make_sure_f();

---ALTER TABLE Studio
---ADD CONSTRAINT chk_rich CHECK ((select netWorth from MovieExec where MovieExec.cert = presCert) >= 10000000 );


---=================
--Q 3. 
-----===============
drop table if exists log_exec_row;
create table log_exec_row (time_stamp date, user_name varchar(50), action varchar(1000));

CREATE OR REPLACE FUNCTION exec_row_fn() RETURNS TRIGGER AS $exec_audit_row$
    BEGIN
        --
        -- Create a row in log_A_row to reflect the operation performed on A,
        -- make use of the special variable TG_OP to work out the operation.
        --
        IF (TG_OP = 'DELETE') THEN
            INSERT INTO log_exec_row VALUES (now(), user, 'Deleted '||OLD); 
            RETURN OLD;
        ELSIF (TG_OP = 'UPDATE') THEN
            INSERT INTO log_exec_row VALUES (now(), user, 'Updated '||OLD || ' to ' || NEW);  
            RETURN NEW;
        ELSIF (TG_OP = 'INSERT') THEN
            INSERT INTO log_exec_row VALUES (now(), user, 'Inserted '||NEW); 
            RETURN NEW;
        END IF;
        RETURN NULL; -- result is ignored since this is an AFTER trigger
    END;
$exec_audit_row$ LANGUAGE plpgsql;

CREATE TRIGGER exec_audit_row
AFTER INSERT OR UPDATE OR DELETE ON MovieExec
FOR EACH ROW 
EXECUTE PROCEDURE exec_row_fn();

INSERT INTO MovieExec(name, address, cert, netWorth)
VALUES('Mg Griffith', '34 Boston Blvd', 302, 30000);

update MovieExec set netWorth = netWorth + 100000;
---=================
--Q 4. 
-----===============

create view MGM as 
	select title, year from Movies where studioName = 'MGM'; 

CREATE OR REPLACE FUNCTION MGM_Insert()
  RETURNS trigger AS
'
BEGIN
 INSERT INTO  Movies(title, year, studioName)
 VALUES(new.title, new.year, ''MGM'');
 RETURN NEW;
END;
'
LANGUAGE plpgsql;



CREATE TRIGGER MGMinsert
INSTEAD OF INSERT ON MGM
FOR EACH ROW
EXECUTE PROCEDURE MGM_Insert();

insert into MGM VALUES('asdsdsd', 1995);
