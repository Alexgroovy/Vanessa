﻿#language: ru

@tree

Функционал: Проверка расчета итогового количества

Как менеджер по продажам я хочу
создать и заполнить документ заказ,добавить пару строк в ТЧ Товаы в корретности расчета итогового количества 
чтобы убедиться в корректности функционала

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка расчета итогового количества
	Дано Заполнение шапки документ заказ
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" в поле с именем "ТоварыТовар" я ввожу текст 'Кроссовки'
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '1'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я добавляю строку
	И в таблице "Товары" я активизирую поле с именем "ТоварыТовар"
	И в таблице "Товары" в поле с именем "ТоварыТовар" я ввожу текст 'Кроссовки'
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '1'
	И в таблице "Товары" я завершаю редактирование строки
	Тогда элемент формы с именем "ТоварыИтогКоличество" стал равен '2'
