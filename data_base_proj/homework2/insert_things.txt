INSERT INTO PharmaceuticalCompanies
VALUES('ask','12345');

INSERT INTO Drugs
VALUES('ask','cold pill','h two o');

INSERT INTO Drugs
VALUES('ask','pain pill','h two');

INSERT INTO Pharmacy
VALUES('rexall','George','34567');

INSERT INTO Doctor
VALUES('1002748','Morgan','head','12');

INSERT INTO Prescriptions
VALUES('001','20160512','1002748','1002716');

INSERT INTO Patient
VALUES('1002716','leo','wet more','99','1002748');

INSERT INTO Drug_In_Prescriptions
VALUES('ask','cold pill','001','two');

INSERT INTO Drug_Sold_In_Pharmacy
VALUES('ask','cold pill','rexall','George');