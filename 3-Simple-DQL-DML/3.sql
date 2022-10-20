--4.1 
Select owner_id,
       name,
       telephone_number,
       dateOfBirth
from Owners
where telephone_number > 500;
--4.2
Select owner_id,
       name,
       telephone_number,
       dateOfBirth
from Owners
where name = 'Anton';
--4.3
Select owner_id,
       name,
       telephone_number,
       dateOfBirth
from Owners
where name like 'A__e%';
--4.4 У завданні 1.2 було додано колонку типу date. Створити команду отримання значень всіх колонок (явно перерахувати) за окремими рядками з урахуванням умови: значення доданої
--колонки містить невизначене значення.
Select owner_id,
       name,
       telephone_number,
       dateOfBirth
from Owners
where dateOfBirth IS NULL;
--4.5
Select owner_id,
       name,
       telephone_number,
       dateOfBirth
from Owners
where telephone_number > 500 AND name='Anton';
--4.6 Створити команду отримання значень всіх колонок (явно перерахувати) за окремими
-- рядками з урахуванням умови, що інвертує результат рішення 4.5
Select owner_id,
       name,
       telephone_number,
       dateOfBirth
from Owners
where telephone_number < 500 AND name != 'Anton';