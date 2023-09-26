#language: ru

@tree

Функционал: отображение возвратов в отчете D2001 Продажи

Как Тестировщик я хочу
протестировать отображение возвратов в отчете D2001 Продажи
чтобы все работало корректно  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: отображение возвратов в отчете D2001 Продажи
	//Протестируйте отображение возвратов в отчете D2001 Продажи.

	* создание возврата
		// Справочник.RowIDs
		И я проверяю или создаю для справочника "RowIDs" объекты:
			| 'Ref'                                                            | 'DeletionMark' | 'Code' | 'Description'                          | 'AgreementSales'                                                     | 'Company'                                                           | 'CurrencySales'                                                      | 'LegalNameSales'                                                    | 'PartnerSales'                                                     | 'PriceIncludeTaxSales' | 'Store'                                                          | 'Unit'                                                          | 'ItemKey'                                                          | 'Branch' | 'Basis'                                                                | 'RowID'                                | 'ProcurementMethod' | 'StoreSender' | 'StoreReceiver' | 'TransactionTypeSC' | 'TransactionTypeGR'                                    | 'TransactionType' | 'Requester' | 'AgreementPurchases' | 'PartnerPurchases' | 'LegalNamePurchases' | 'PriceIncludeTaxPurchases' | 'CurrencyPurchases' |
			| 'e1cib/data/Catalog.RowIDs?ref=8d11047c1674145211ee5c8fa610745c' | 'False'        | 1      | '3f1eee95-adfe-4227-8794-122d1f2a0546' | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6867' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2a' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' | 'True'                 | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2751' | ''       | 'e1cib/data/Document.SalesReturn?ref=8d11047c1674145211ee5c8fa6107471' | '3f1eee95-adfe-4227-8794-122d1f2a0546' | ''                  | ''            | ''              | ''                  | 'Enum.GoodsReceiptTransactionTypes.ReturnFromCustomer' | ''                | ''          | ''                   | ''                 | ''                   | 'False'                    | ''                  |

		// Документ.SalesReturn

		И я проверяю или создаю для документа "SalesReturn" объекты:
			| 'Ref'                                                                  | 'DeletionMark' | 'Number' | 'Date'                | 'Posted' | 'Agreement'                                                          | 'BaseDocument' | 'Company'                                                           | 'Currency'                                                           | 'DateOfShipment'     | 'LegalName'                                                         | 'ManagerSegment' | 'Partner'                                                          | 'PriceIncludeTax' | 'DueAsAdvance' | 'LegalNameContract' | 'Author'                                                        | 'Branch' | 'Description' | 'DocumentAmount' |
			| 'e1cib/data/Document.SalesReturn?ref=8d11047c1674145211ee5c8fa6107471' | 'False'        | 1        | '26.09.2023 20:10:54' | 'True'   | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6867' | ''             | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | '01.01.0001 0:00:00' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2a' | ''               | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' | 'True'            | 'False'        | ''                  | 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' | ''       | ''            | 450              |

		И я перезаполняю для объекта табличную часть "ItemList":
			| 'Ref'                                                                  | 'Key'                                  | 'Cancel' | 'ItemKey'                                                          | 'Store'                                                          | 'NetAmount' | 'OffersAmount' | 'Price' | 'PriceType'                                                          | 'Quantity' | 'TaxAmount' | 'TotalAmount' | 'Unit'                                                          | 'SalesReturnOrder' | 'SalesInvoice' | 'DontCalculateRow' | 'QuantityInBaseUnit' | 'ProfitLossCenter' | 'RevenueType' | 'AdditionalAnalytic' | 'UseGoodsReceipt' | 'ReturnReason' |
			| 'e1cib/data/Document.SalesReturn?ref=8d11047c1674145211ee5c8fa6107471' | '3f1eee95-adfe-4227-8794-122d1f2a0546' | 'False'  | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2751' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 375         |                | 450     | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | 1          | 75          | 450           | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | ''                 | ''             | 'False'            | 1                    | ''                 | ''            | ''                   | 'True'            | ''             |

		И я перезаполняю для объекта табличную часть "TaxList":
			| 'Ref'                                                                  | 'Key'                                  | 'Tax'                                                           | 'Amount' | 'Analytics' | 'TaxRate'                                                          | 'IncludeToTotalAmount' | 'ManualAmount' |
			| 'e1cib/data/Document.SalesReturn?ref=8d11047c1674145211ee5c8fa6107471' | '3f1eee95-adfe-4227-8794-122d1f2a0546' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | 75       | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 'True'                 | 75             |

		И я перезаполняю для объекта табличную часть "Currencies":
			| 'Ref'                                                                  | 'CurrencyFrom'                                                       | 'Rate' | 'ReverseRate' | 'ShowReverseRate' | 'Multiplicity' | 'Key' | 'MovementType'                                                                                    | 'Amount' | 'IsFixed' |
			| 'e1cib/data/Document.SalesReturn?ref=8d11047c1674145211ee5c8fa6107471' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | ''    | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 450      | 'False'   |
			| 'e1cib/data/Document.SalesReturn?ref=8d11047c1674145211ee5c8fa6107471' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 0.859  | 1.1641        | 'False'           | 1              | ''    | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' | 386.55   | 'False'   |
			| 'e1cib/data/Document.SalesReturn?ref=8d11047c1674145211ee5c8fa6107471' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | ''    | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' | 450      | 'False'   |
			| 'e1cib/data/Document.SalesReturn?ref=8d11047c1674145211ee5c8fa6107471' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |        |               | 'False'           |                | ''    | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |          | 'False'   |

		И я перезаполняю для объекта табличную часть "RowIDInfo":
			| 'Ref'                                                                  | 'Key'                                  | 'RowID'                                | 'Quantity' | 'Basis' | 'CurrentStep' | 'NextStep'                                    | 'RowRef'                                                         | 'BasisKey' |
			| 'e1cib/data/Document.SalesReturn?ref=8d11047c1674145211ee5c8fa6107471' | '3f1eee95-adfe-4227-8794-122d1f2a0546' | '3f1eee95-adfe-4227-8794-122d1f2a0546' | 1          | ''      | ''            | 'e1cib/data/Catalog.MovementRules?refName=GR' | 'e1cib/data/Catalog.RowIDs?ref=8d11047c1674145211ee5c8fa610745c' | ''         |


	* генерация отчета
		Дано Я открываю навигационную ссылку "e1cib/app/Report.D2001_Sales"
		Когда открылось окно 'D2001 Продажи'
		И я нажимаю на кнопку с именем 'FormGenerate'
	
	* проверка
		Тогда табличный документ "Result" равен:
			| 'Параметры:'              | 'Период: 01.09.2023 - 30.09.2023'                                   | ''        | ''                  | ''             |
			| 'Отбор:'                  | 'Вид мультивалютной аналитики Равно "ru наименование не заполнено"' | ''        | ''                  | ''             |
			| ''                        | ''                                                                  | ''        | ''                  | ''             |
			| 'Период, месяц'           | 'Итого'                                                             | ''        | ''                  | ''             |
			| 'Номенклатура'            | ''                                                                  | ''        | ''                  | ''             |
			| 'Характеристика'          | 'Количество'                                                        | 'Сумма'   | 'Сумма без налогов' | 'Сумма скидки' |
			| 'Сентябрь 2023'           | '-1,000'                                                            | '-450,00' | '-375,00'           | ''             |
			| 'Товар без характеристик' | '-1,000'                                                            | '-450,00' | '-375,00'           | ''             |
			| 'Товар без характеристик' | '-1,000'                                                            | '-450,00' | '-375,00'           | ''             |
			| 'Итого'                   | '-1,000'                                                            | '-450,00' | '-375,00'           | ''             |
		
	И я закрываю все окна клиентского приложения
		


