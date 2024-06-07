﻿#language: ru

@tree

Функционал: Проверка заполнения поля Организация 

Как Тестировщик я хочу
провреить приавилтность установки Организации в документе Заказ
чтобы клиент избежал ошибок при заполнении документа 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Заплонение поля Организация 
	И В командном интерфейсе я выбираю "Продажи" "Заказы покупателей"
	И я нажимаю на кнопку с именем 'FormCreate'
	И я нажимаю кнопку выбора у поля с именем 'Partner'
	Тогда открылось окно "Партнеры"
	И в таблице 'List' я перехожу к строке:
		| "Код" | "Наименование"       |
		| "2"   | "Клиент 2 (2 соглашения)" |
	И в таблице 'List' я выбираю текущую строку
	Если поле с именем 'Agreement' заполнено Тогда
		И поле с именем 'Company' заполнено  
	ИначеЕсли поле с именем'Agreement' имеет значение "" тогда
		И я нажимаю кнопку выбора у поля с именем 'Company'
		Тогда открылось окно "Организации"
		И в таблице 'List' я перехожу к строке:
				| "Код" | "Наименование"           |
				| "2"   | "Собственная компания 2" |
		И в таблице 'List' я выбираю текущую строку				
	И я перехожу к следующему реквизиту
		
	


	
		


