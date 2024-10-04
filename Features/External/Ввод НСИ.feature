﻿#language: ru

@tree

Функционал: ввод НСИ

Как Администратор я хочу
проверить, что НСИ вводится корректно
чтобы исключить ошибки ввода данных

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: создание контрагента
	* удаление элемента
		И В командном интерфейсе я выбираю 'Главное' 'Контрагенты'
		Тогда открылось окно 'Контрагенты'
		И я нажимаю на кнопку с именем 'ФормаНайти'
		Тогда открылось окно 'Найти'
		И в поле с именем 'Pattern' я ввожу текст 'ВА - поставщик с оптовой ценой'
		И я нажимаю на кнопку с именем 'Find'
		Тогда открылось окно 'Контрагенты'
		И пока в таблице "Список" количество строк ">" 0 Тогда
			И в таблице "Список" я выбираю текущую строку
			Тогда открылось окно 'ВА - поставщик с оптовой ценой (Контрагент)'
			И в поле с именем 'Наименование' я ввожу текст 'Удалить'
			И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
			И я жду закрытия окна 'ВА - поставщик с оптовой ценой (Контрагент) *' в течение 20 секунд
	* создание элемента
		И В командном интерфейсе я выбираю 'Главное' 'Контрагенты'
		Тогда открылось окно 'Контрагенты'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Контрагент (создание)'
		И в поле с именем 'Наименование' я ввожу текст 'ВА - поставщик с оптовой ценой'
		И из выпадающего списка с именем "ВидЦен" я выбираю точное значение 'Оптовая'
		И в поле с именем 'ДополнительнаяИнформация' я ввожу текст 'это дополнительная информация'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Контрагент (создание) *' в течение 20 секунд
	
Сценарий: создание номенклатуры
	* удаление элемента
		И В командном интерфейсе я выбираю 'Главное' 'Товары'
		Тогда открылось окно 'Товары'
		И я нажимаю на кнопку с именем 'ФормаНайти'
		Тогда открылось окно 'Найти'
		И в поле с именем 'Pattern' я ввожу текст 'ВА - тестовый'
		И я нажимаю на кнопку с именем 'Find'
		Тогда открылось окно 'Товары'
		И пока в таблице "Список" количество строк ">" 0 Тогда
			И в таблице "Список" я выбираю текущую строку
			Тогда открылось окно 'ВА - тестовый (Товар)'
			И в поле с именем 'Наименование' я ввожу текст 'Удалить'
			И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
			И я жду закрытия окна 'ВА - тестовый (Товар) *' в течение 20 секунд
	* создание элемента
		И В командном интерфейсе я выбираю 'Главное' 'Товары'
		Тогда открылось окно 'Товары'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Товар (создание)'
		И в поле с именем 'Наименование' я ввожу текст 'ВА - тестовый'
		И я нажимаю кнопку выбора у поля с именем "Поставщик"
		Тогда открылось окно 'Контрагенты'
		И я нажимаю на кнопку с именем 'ФормаНайти'
		Тогда открылось окно 'Найти'
		И в поле с именем 'Pattern' я ввожу текст 'ВА - поставщик с оптовой ценой'
		И я нажимаю на кнопку с именем 'Find'
		Тогда открылось окно 'Контрагенты'
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Товар (создание) *'
		И в поле с именем 'ВТ_Вес' я ввожу текст '100,000'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Товар (создание) *' в течение 20 секунд
	* проверка заполнения
		Когда открылось окно 'Товары'
		И в таблице "Список" я выбираю текущую строку
		И элемент формы с именем "Наименование" стал равен 'ВА - тестовый'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'ВА - тестовый (Товар)' в течение 20 секунд
				
