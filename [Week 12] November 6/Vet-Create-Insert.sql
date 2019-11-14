CREATE TABLE PET_OWNER (
OwnerID Int AUTO_INCREMENT NOT NULL,
OwnerLastName Char(25) NOT NULL,
OwnerFirstName Char(25) NOT NULL,
OwnerPhone Char(12) NULL,
OwnerEmail Char(50) NULL,
CONSTRAINT PET_OWNER_PK PRIMARY KEY (OwnerID)
);

CREATE TABLE PET (
PetID Int AUTO_INCREMENT NOT NULL,
PetName Char(25) NOT NULL,
PetType Char(25) NOT NULL,
PetBreed Char(25) NULL,
PetDOB DateTime NULL,
OwnerID Int NOT NULL,
CONSTRAINT PET_PK PRIMARY KEY (PetID),
CONSTRAINT PET_PET_OWNER_FK FOREIGN KEY (OwnerID)
REFERENCES PET_OWNER (OwnerID)
);

INSERT INTO PET_OWNER (OwnerLastName, OwnerFirstName, OwnerPhone, OwnerEmail)
VALUES ('Downs', 'Marsha', '555-537-8765', 'Marsha.Downs@somewhere.com');
INSERT INTO PET_OWNER (OwnerLastName, OwnerFirstName, OwnerPhone, OwnerEmail)
VALUES ('James', 'Richard', '555-537-7654', 'Richard.James@somewhere.com');
INSERT INTO PET_OWNER (OwnerLastName, OwnerFirstName, OwnerPhone, OwnerEmail)
VALUES ('Frier', 'Liz', '555-537-6543', 'Liz.Frier@somewhere.com');
INSERT INTO PET_OWNER (OwnerLastName, OwnerFirstName, OwnerEmail)
VALUES('Trent', 'Miles', 'Miles.Trent@somewhere.com');

INSERT INTO PET (PetName, PetType, PetBreed, PetDOB, OwnerID)
VALUES ('King', 'Dog', 'Std. Poodle', '2011-02-27', 1);
INSERT INTO PET (PetName, PetType, PetBreed, PetDOB, OwnerID)
VALUES ('Teddy', 'Cat', 'Cashmere', '2012-02-01', 2);
INSERT INTO PET (PetName, PetType, PetBreed, PetDOB, OwnerID)
VALUES ('Fido', 'Dog', 'Std. Poodle', '2010-07-17', 1);
INSERT INTO PET (PetName, PetType, PetBreed, PetDOB, OwnerID)
VALUES ('AJ', 'Dog', 'Collie Mix', '2011-05-05', 3);
INSERT INTO PET (PetName, PetType, PetBreed, PetDOB, OwnerID)
VALUES ('Cedro', 'Cat', 'Unknown', '2009-06-06', 2);
INSERT INTO PET (PetName, PetType, PetBreed, OwnerID)
VALUES ('Wooley', 'Cat', 'Unknown', 2);
INSERT INTO PET (PetName, PetType, PetBreed, PetDOB, OwnerID)
VALUES ('Buster', 'Dog', 'Border Collie', '2008-12-11', 4);
