CREATE TABLE BANKER (
EmployeeID Int AUTO_INCREMENT NOT NULL,
Name Char(50) NOT NULL,
Location Char(50) NOT NULL,
CONSTRAINT BANKER_PK PRIMARY KEY (EmployeeID)
);

CREATE TABLE CUSTOMER (
CustomerID Int AUTO_INCREMENT NOT NULL,
Name Char(50) NOT NULL,
SSN Char(11) NOT NULL,
EmployeeID Int NOT NULL,
CONSTRAINT CUSTOMER_PK PRIMARY KEY (CustomerID),
CONSTRAINT CUSTOMER_FK FOREIGN KEY (EmployeeID)
REFERENCES BANKER (EmployeeID)
);

INSERT INTO BANKER (Name, Location)
VALUES ('Rodrigo', 'Creve Coeur');
INSERT INTO BANKER (Name, Location)
VALUES ('Machelle', 'Creve Coeur');
INSERT INTO BANKER (Name, Location)
VALUES('Sheena', 'Kansas City');
INSERT INTO BANKER (Name, Location)
VALUES('Aisha', 'Kansas City');

INSERT INTO CUSTOMER (SSN, Name, EmployeeID)
VALUES ('111-11-1111', 'Luke Skywalker', 1);
INSERT INTO CUSTOMER (SSN, Name, EmployeeID)
VALUES ('222-22-2222', 'Han Solo', 2);
INSERT INTO CUSTOMER (SSN, Name, EmployeeID)
VALUES ('333-33-3333', 'Leia Organa', 3);
INSERT INTO CUSTOMER (SSN, Name, EmployeeID)
VALUES ('444-44-4444', 'Lando Calrissian', 4);
INSERT INTO CUSTOMER (SSN, Name, EmployeeID)
VALUES ('555-55-5555', 'Obi-Wan Kenobi', 1);