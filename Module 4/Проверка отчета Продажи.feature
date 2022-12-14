#language: ru

@tree

Функционал: Проверка отчета D2001 Продажи

Как разработчик я хочу
проверить корректность вывода отчета  
чтобы после релиза не возникло внештатных ситуаций 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И я закрываю все окна клиентского приложения

Сценарий: Проверка отчета D2001 Продажи
	И В командном интерфейсе я выбираю 'Отчеты' 'D2001 Продажи'
	Тогда открылось окно 'D2001 Продажи'
	И в табличном документе 'Result' я перехожу к ячейке "R1C1"
	И я нажимаю на кнопку с именем 'FormGenerate'
	И я жду когда в табличном документе "Result" заполнится ячейка "R2C2" в течение 60 секунд
	Тогда Табличный документ "Result" равен макету "D2001 Продажи"
	И я закрываю все окна клиентского приложения
	