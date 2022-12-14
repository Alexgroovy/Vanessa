#language: ru

@tree

Функционал: Проверка основного функционала документа Расход товара

Как разработчик я хочу
проверить проведение документа,движения документа и печатную форму Расходная товарная накладная
чтобы убедиться,что после релиза не возникнет внештатаных ситуаций

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И я закрываю все окна клиентского приложения

Сценарий: Проверка основного функционала документа Расход товара
	Дано Я открываю навигационную ссылку "e1cib/list/Документ.РасходТовара"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Продажа товара (создание)'
	И в поле с именем "Организация" я ввожу текст 'ООО "1000 мелочей"'
	И в поле с именем "Покупатель" я ввожу текст 'Мосхлеб ОАО'
	И в поле с именем "ВидЦен" я ввожу текст 'Оптовая'
	И в поле с именем "Склад" я ввожу текст 'Большой'
	И в таблице "Товары" в поле с именем 'ТоварыТовар' я ввожу текст 'Кроссовки'
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '3 000,00'
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2,00'
	И в таблице "Товары" я завершаю редактирование строки
	Тогда в таблице "Товары" поле с именем 'ТоварыСумма' имеет значение '6 000,00'
	И я нажимаю на кнопку с именем 'ФормаПровести'
	И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр взаиморасчетов с контрагентами'
	Тогда таблица "Список" стала равной:
		| 'Номер строки' | 'Контрагент'  | 'Сумма'    | 'Валюта' |
		| '1'            | 'Мосхлеб ОАО' | '6 000,00' |          |
	И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр продаж'
	Тогда таблица "Список" стала равной:
		| 'Номер строки' | 'Покупатель'  | 'Сумма'    | 'Товар'     | 'Количество' |
		| '1'            | 'Мосхлеб ОАО' | '6 000,00' | 'Кроссовки' | '2,00'       |
	И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр товарных запасов'
	Тогда таблица "Список" стала равной:
		| 'Номер строки' | 'Склад'   | 'Товар'     | 'Количество' |
		| '1'            | 'Большой' | 'Кроссовки' | '2,00'       |
	И В текущем окне я нажимаю кнопку командного интерфейса 'Основное'
	И я нажимаю на кнопку с именем 'ФормаДокументРасходТовараПечатьРасходнойНакладной'
	Тогда табличный документ "SpreadsheetDocument" равен макету "Расходная накладная" по шаблону
	И я закрываю текущее окно
	И я нажимаю на кнопку с именем 'ФормаУстановитьПометкуУдаления'
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку с именем 'Button0'	
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я закрываю все окна клиентского приложения
