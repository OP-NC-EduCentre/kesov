--ALTER USER kesov_test quota unlimited on Owners;
--ALTER USER kesov_test quota unlimited on Estate;
--KESOV
--1.1 Для кожної таблиці БД створити команди внесення даних, тобто внести по два рядки.
INSERT into Owners (owner_id,name,telephone_number,dateofbirth) values (3,'Anton',380922454,null);
INSERT into Owners (owner_id,name,telephone_number,dateofbirth) values (5,'Roman',380111114,null);
insert into Estate (estate_id,owner,address,space,dateofcreation) values (300,3,'Freedom street 46',19.5,null);
insert into Estate (estate_id,owner,address,space,dateofcreation) values (301,5,'Freedom street 22',19.5,null);
--1.2 Для однієї з таблиць створити команду додавання колонки типу date з урахуванням предметної області
alter table Owners add dateOfRegistration date;
--1.3 Для зазначеної таблиці створити команду на внесення одного рядка, але з невизначеним значенням колонки типу date.
INSERT into Owners values (4,'Artem',38094565,null,null);
--1.4 Створити команду налаштування формату date = dd/mm/yyyy.
ALTER SESSION SET NLS_DATE_FORMAT = 'dd/mm/yyyy';
--1.5 Для задіяної в завданні 1.2 таблиці створити ще одну команду на внесення одного рядка з урахуванням значення колонки типу date.
INSERT into Owners values (4,'Artem',380933456,'22/02/2001','20/09/2022');
--1.6
insert into Estate (estate_id,owner,address,space,dateofcreation) values (400,3,'Freedom street 46',19.5,null);
--1.7Для однієї з таблиць, що містить обмеження цілісності зовнішнього ключа, виконатикоманду додавання нового рядка зі значенням колонки зовнішнього ключа, який відсутній уколонці первинного ключа відповідної таблиці. Перевірити реакцію СКБД на подібне додавання,яке порушує обмеження цілісності зовнішнього ключа.
insert into Estate (estate_id,owner,address,space,dateofcreation) values (300,5,'Freedom street 46',19.5,null);
