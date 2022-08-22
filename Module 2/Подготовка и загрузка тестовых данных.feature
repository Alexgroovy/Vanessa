﻿#language: ru

@tree

Функционал: Подготовка и загрузка тестовых данных для документа заказа

Как Разработчик я хочу
подготовить тестовые данные для выполнения сценариев

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Заполнение констант

	И я перезаполняю константу "SSLIMAP" значением "False"

	И я перезаполняю константу "SSLPOP3" значением "False"

	И я перезаполняю константу "SSLSMTP" значением "False"

	И я перезаполняю константу "АдресPOP3Сервера" значением "pop.mail.ru"

	И я перезаполняю константу "АдресSMTPСервера" значением "smtp.mail.ru"

	И я перезаполняю константу "ВалютаУчета" значением "e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5"

	И я перезаполняю константу "ВоспроизводитьТекстУведомления" значением "False"

	И я перезаполняю константу "ИспользоватьIMAP" значением "False"

	И я перезаполняю константу "ИмяОтправителяПочтовогоСообщения" значением "tovarshop@mail.ru"

	И я перезаполняю константу "ИспользоватьAPNS" значением "False"

	И я перезаполняю константу "ИспользоватьFCM" значением "False"

	И я перезаполняю константу "ИспользоватьWNS" значением "False"

	И я перезаполняю константу "ИспользоватьСетьПередачиДанных" значением "False"

	И я перезаполняю константу "ИспользоватьСотовуюСеть" значением "False"

	И я перезаполняю константу "ИспользоватьСпутники" значением "False"

	И я перезаполняю константу "КодНовогоУзлаПланаОбмена" значением "3"

	И я перезаполняю константу "ОтметкаНаФотоснимкеДата" значением "False"

	И я перезаполняю константу "ПарольPOP3" значением "tovar1999"

	И я перезаполняю константу "ПользовательPOP3" значением "tovarshop"

	И я перезаполняю константу "ПортPOP3" значением "110"

	И я перезаполняю константу "ПортSMTP" значением "25"

	И я перезаполняю константу "РаботаСТорговымОборудованием" значением "False"

	И я перезаполняю константу "СертификатМобильногоПриложенияIOS" значением "ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9"

	И я перезаполняю константу "ТаймаутИнтернетПочты" значением "60"

	И я перезаполняю константу "ТолькоБесплатные" значением "False"

	И я перезаполняю константу "ТолькоЗащищеннаяАутентификацияIMAP" значением "False"

	И я перезаполняю константу "ТолькоЗащищеннаяАутентификацияPOP3" значением "False"

	И я перезаполняю константу "ТолькоЗащищеннаяАутентификацияSMTP" значением "False"

	И я перезаполняю константу "УчетПоСкладам" значением "True"

Сценарий: Создание объектов в справочниках

	И я проверяю или создаю для справочника "Валюты" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'НаименованиеОсновнойВалюты' | 'НаименованиеРазменнойВалюты' |
		| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'False'           | '000000001' | 'Рубли'        | 'рубль'                      | 'копейка'                     |
	
	И я проверяю или создаю для справочника "ВидыЦен" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная'                   | 'False'           | '000000010' | 'Закупочная'   |
	
	И я проверяю или создаю для справочника "Контрагенты" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Родитель'                                                               | 'ЭтоГруппа' | 'Код'       | 'Наименование'              | 'Регион'                                                             | 'Индекс' | 'Страна' | 'Город'           | 'Улица'            | 'Дом' | 'Телефон'          | 'ЭлектроннаяПочта'       | 'Факс'             | 'ВебСайт' | 'ВидЦен'                                                             | 'ДополнительнаяИнформация' | 'КонтактноеЛицо'  | 'Широта'  | 'Долгота' |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'           | ''                                                                       | 'True'      | '000000001' | 'Поставщики'                | ''                                                                   | ''       | ''       | ''                | ''                 | ''    | ''                 | ''                       | ''                 | ''        | ''                                                                   | ''                         | ''                | ''        | ''        |
		| 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710076' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000012' | 'Мосхлеб ОАО'               | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '456789' | 'Россия' | 'Москва'          | 'Петровка'         | '12'  | '+7(999)234-78-64' | 'mh@hleb.ru'             | ''                 | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 'Поставка хлеба'           | 'Громышева П.Р.'  | 55.762744 | 37.618102 |
		
	И я проверяю или создаю для справочника "Организации" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Код'       | 'Наименование'       | 'ВалютныйУчет' |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c63' | 'False'           | '000000001' | 'ООО "Все для дома"' | 'True'         |

	И я проверяю или создаю для справочника "Пользователи" объекты:
		| 'Ссылка'                                                                  | 'ПометкаУдаления' | 'Код'                       | 'Наименование'         | 'ИдентификаторПользователяИБ'          |
		| 'e1cib/data/Справочник.Пользователи?ref=a2bc001d600da75a11e1f76c2216989a' | 'False'           | 'Менеджер по продажам'      | 'Менеджер по продажам' | '756fb8ef-e08b-4c2b-966f-17ee59757135' |
		| 'e1cib/data/Справочник.Пользователи?ref=bbf30050ba5c887711e1fe5ecbd0aae9' | 'False'           | 'Менеджер по закупкам'      | 'Менеджер по закупкам' | '947db3e8-b916-42cd-b23f-2f91b984b5c5' |
		| 'e1cib/data/Справочник.Пользователи?ref=b60f50465d9e25ae11e7c87b2447c02a' | 'False'           | 'Продавец'                  | 'Продавец'             | '784122a1-74c2-4339-b182-1528b0e403f4' |

	И я проверяю или создаю для справочника "Регионы" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование'    |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | 'False'           | '000000001' | 'Москва'          |

	И я проверяю или создаю для справочника "Склады" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование'        | 'НеИспользовать' |
		| 'e1cib/data/Справочник.Склады?ref=8ca1000d8843cd1b11dc8eb49faea67b' | 'False'           | '000000004' | 'Склад отдела продаж' | 'False'          |
	
	И я проверяю или создаю для справочника "Товары" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'ЭтоГруппа' | 'Код'       | 'Наименование' | 'Артикул' |
		| 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8cfecc6a7df2' | 'False'           | 'False'     | '000000024' | 'Кроссовки'    | 'Kros001' |
	
	
