--6.1 Для однієї з таблиць створити команду отримання кількості рядків таблиці.
Select COUNT(*)
from Owners;
--6.2Для однієї з таблиць створити команду отримання суми значень однієї з цілих колонок.
SELECT SUM(owner_id)
FROM owners;
--6.3Для однієї з таблиць створити команду отримання статистики появи значень однієї з колонок у таблиці, наприклад:
Select COUNT(address) as "Freedom46 in addresses"
from Estate
where address='Freedom street 46';
Select count(space) as "Artem's houses"
from Estate
where owner = 3;
--6.4 6.4 Модифікувати рішення попереднього завдання так, щоб у відповіді були
--відфільтровані рядки з урахуванням заданої умови, що включає використану функцію агрегації.
Select count(space) as "Artem's houses"
from Estate
where owner = 3
GROUP BY estate_id;