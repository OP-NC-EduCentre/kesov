--2.1 Для однієї з таблиць створити команду отримання значень всіх колонок (явно перерахувати) у всіх рядках.
Select owner_id,
       name,
       telephone_number,
       dateOfBirth
from Owners;
--2.2 Для однієї з таблиць створити команду отримання цілого числа колонки з використанням будь-якої арифметичної операції. При виведенні на екран визначити для зазначеної колонки нову назву псевдоніма.
Select 2 * telephone_number "multiplied telephone"
from Owners;
--2.3 Для однієї з таблиць, що містить колонку зовнішнього ключа створити команду отримання значення колонки без дублювання значень.
Select DISTINCT owner
from Estate;
--2.4 Для однієї з таблиць створити команду отримання результату конкатенації значень будь-яких двох колонок. При виведенні на початок рядка виведення додати літерал «UNION=».
select
 'UNION='||name|| telephone_number AS "Owner and his Telephone number"
from Owners;
--2.5 Модернізувати рішення завдання 2.2, отримавши в порядку зростання значення псевдоніму.
Select 2 * telephone_number "multiplied telephone"
from Owners
ORDER BY telephone_number asc;
--2.6
select estate_id, owner, address, space, dateOfCreation
from Estate
order by space , dateOfCreation desc;