﻿#language: ru

@tree

Функционал: Проверка функционала документа Заказ

Как менеджер по продажам я хочу
создать и проверить расчет суммы в документе Заказ и проверить что при выборе номенклатуры с видом Услуги не удастся заполнить количество  
чтобы убедить в корректности работы функионала после нового релиза

Контекст: Запускаем сеанс менеджера по продажам
Дано я подключаю TestClient "МенеджерПоПродажам" логин "Менеджер по продажам" пароль ""

Сценарий: Проверка расчета суммы документа Заказ
И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
Тогда открылось окно 'Заказы товаров'
И я нажимаю на кнопку с именем 'ФормаСоздать'
Тогда открылось окно 'Заказ (создание)'
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '55'
И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '10'
И в таблице "Товары" я завершаю редактирование строки
Тогда в таблице "Товары" поле с именем 'ТоварыСумма' имеет значение '550,00'
И я закрываю все окна клиентского приложения

Сценарий: Проверка заполнения поля количества в документе Заказ
И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
Тогда открылось окно 'Заказы товаров'
И я нажимаю на кнопку с именем 'ФормаСоздать'
Тогда открылось окно 'Заказ (создание)'
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице "Товары" я активизирую поле с именем "ТоварыТовар"
И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю по строке 'Доставка'
И в таблице "Товары" я завершаю редактирование строки
И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '10'
И я закрываю все окна клиентского приложения

