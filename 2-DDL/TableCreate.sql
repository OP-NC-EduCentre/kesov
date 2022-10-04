drop table Estate CASCADE CONSTRAINTS;
drop table Owners CASCADE CONSTRAINTS;
CREATE TABLE Owners
(
    owner_id     number(4),
    name        varchar(15),
    telephone_number     number(10),
    dateOfBirth DATE
);
CREATE TABLE Estate
(
    estate_id number(4),
    owner number(4),
    address varchar(50),
    space number(4,2),
    dateOfCreation DATE
);
