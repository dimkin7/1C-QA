﻿#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: заполнение шапки документа Заказ

Сценарий: заполнение шапки документа Заказ
И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Товары"'
И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Мосхлеб ОАО'
И из выпадающего списка с именем "Склад" я выбираю точное значение 'Малый'
И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
