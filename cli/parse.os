#Использовать osparser

Перем КаталогБиблиотеки;
Перем ФайлСоставаОПИ;
Перем МодульСоставаОПИ;
Перем СоответствиеКомандМодулей;
Перем ТекущийМодуль;

Процедура ПриСозданииОбъекта()
    
    СоответствиеКомандМодулей  = Новый Соответствие();
    СоответствиеКомандМодулей.Вставить("OPI_Telegram", "telegram");
    СоответствиеКомандМодулей.Вставить("OPI_VK"      , "vk");
    
	КаталогБиблиотеки = "./OInt/core/Modules";
    ФайлСоставаОПИ    = "./cli/data/Modules/СоставБиблиотеки.os";

    МодульСоставаОПИ  = Новый ТекстовыйДокумент();

    МодульСоставаОПИ.УстановитьТекст("Функция ПолучитьСостав() Экспорт
    |
    |    ТаблицаСостава = Новый ТаблицаЗначений();
    |    ТаблицаСостава.Колонки.Добавить(""Библиотека"");
    |    ТаблицаСостава.Колонки.Добавить(""Модуль"");
    |    ТаблицаСостава.Колонки.Добавить(""Метод"");
    |    ТаблицаСостава.Колонки.Добавить(""МетодПоиска"");
    |    ТаблицаСостава.Колонки.Добавить(""Параметр"");
    |    ТаблицаСостава.Колонки.Добавить(""Описание"");
    |    ТаблицаСостава.Колонки.Добавить(""Обработка"");
    |    ТаблицаСостава.Колонки.Добавить(""ОписаниеМетода"");
    |");

    ЗаполнитьТаблицуСостава();

    МодульСоставаОПИ.ДобавитьСтроку("    Возврат ТаблицаСостава;");
    МодульСоставаОПИ.ДобавитьСтроку("КонецФункции");

    МодульСоставаОПИ.Записать(ФайлСоставаОПИ);

КонецПроцедуры


Процедура ЗаполнитьТаблицуСостава()
    
    ФайлыМодулей = НайтиФайлы(КаталогБиблиотеки, "*.os");

    Для Каждого Модуль Из ФайлыМодулей Цикл

        ТекущийМодуль = Модуль.ИмяБезРасширения;

        Если Не СоответствиеКомандМодулей[ТекущийМодуль] = Неопределено Тогда
            РазобратьМодуль(Модуль);
        КонецЕсли;
	  
    КонецЦикла;

КонецПроцедуры

Процедура РазобратьМодуль(Модуль)
    
    Парсер         = Новый ПарсерВстроенногоЯзыка;
	ДокументМодуля = Новый ТекстовыйДокумент;
	ДокументМодуля.Прочитать(Модуль.ПолноеИмя);
	ТекстМодуля = ДокументМодуля.ПолучитьТекст();

	СтруктураМодуля = Парсер.Разобрать(ТекстМодуля);
	
	Для Каждого Метод Из СтруктураМодуля.Объявления Цикл

		Если Метод.Тип = "ОбъявлениеМетода" И Метод.Сигнатура.Экспорт = Истина Тогда
			РазобратьКомментарийМетода(ДокументМодуля, Метод.Начало.НомерСтроки, Метод.Сигнатура.Имя);	
		КонецЕсли;

	КонецЦикла;

КонецПроцедуры

Процедура РазобратьКомментарийМетода(ТекстовыйДокумент, НомерСтроки, ИмяМетода)

	ТекущаяСтрока       = ТекстовыйДокумент.ПолучитьСтроку(НомерСтроки - 1);
	ТекстКомментария    = ТекущаяСтрока;
	Счетчик		        = 1;
    ЗаписыватьПараметры = Ложь;
    ЗаписыватьОписание  = Истина;
    МассивПараметров    = Новый Массив;
    ОписаниеМетода      = "";

	Пока СтрНайти(ТекущаяСтрока, "//") > 0 Цикл

		Счетчик = Счетчик + 1;

		ТекущаяСтрока    = ТекстовыйДокумент.ПолучитьСтроку(НомерСтроки - Счетчик);
		ТекстКомментария = ТекущаяСтрока + Символы.ПС + ТекстКомментария;

	КонецЦикла;

    Если СтрНайти(ТекстКомментария, "!NOCLI") > 0 Тогда
        Возврат;
    КонецЕсли;

    МассивКомментария = СтрРазделить(ТекстКомментария, "//", Ложь);
    МассивКомментария.Удалить(0);

    Счетчик = 0;
    Для Каждого СтрокаКомментария Из МассивКомментария Цикл

        Счетчик = Счетчик + 1;

        Если Не ЗначениеЗаполнено(СокрЛП(СтрокаКомментария)) Тогда
            ЗаписыватьОписание = Ложь;
        КонецЕсли;
            
        Если ЗаписыватьОписание = Истина И Счетчик > 1 Тогда
            ОписаниеМетода = ОписаниеМетода + " " + СокрЛП(СтрокаКомментария);
        КонецЕсли;

        Если СтрНайти(СтрокаКомментария, "Параметры:") > 0 Тогда
            ЗаписыватьПараметры = Истина;
            ЗаписыватьОписание  = Ложь;

        ИначеЕсли СтрНайти(СтрокаКомментария, "Возвращаемое значение:") > 0 Тогда
            Прервать;

        ИначеЕсли ЗаписыватьПараметры = Истина 
            И ЗначениеЗаполнено(СокрЛП(СтрокаКомментария)) 
            И Не СтрНачинаетсяС(СокрЛП(СтрокаКомментария), "*") = 0 Тогда
            
            МассивПараметров.Добавить(СтрокаКомментария);

        Иначе
            Продолжить;
        КонецЕсли;

    КонецЦикла;

    Для Каждого ПараметрМетода Из МассивПараметров Цикл

            ЗаписатьСозданиеПараметраСостава(ПараметрМетода, ИмяМетода, СокрЛП(ОписаниеМетода));
            ОписаниеМетода = "";

    КонецЦикла;

КонецПроцедуры

Процедура ЗаписатьСозданиеПараметраСостава(ПараметрМетода, ИмяМетода, ОписаниеМетода = "") 

    Разделитель              = "-";
    МассивЭлементовПараметра = СтрРазделить(ПараметрМетода, Разделитель, Ложь);
    КоличествоЭлементов      = МассивЭлементовПараметра.Количество();

    Для Н = 0 По МассивЭлементовПараметра.ВГраница() Цикл
        МассивЭлементовПараметра[Н] = СокрЛП(МассивЭлементовПараметра[Н]);
    КонецЦикла;

    Если КоличествоЭлементов < 4 Тогда
        Возврат;
    КонецЕсли;

    Имя       = "--" + МассивЭлементовПараметра[3];
    Обработка = ?(КоличествоЭлементов >= 5, МассивЭлементовПараметра[4], "Строка");
    Описание  = ?(КоличествоЭлементов >= 6, МассивЭлементовПараметра[5], МассивЭлементовПараметра[2]);

    МодульСоставаОПИ.ДобавитьСтроку(Символы.ПС);

    МодульСоставаОПИ.ДобавитьСтроку("    НоваяСтрока = ТаблицаСостава.Добавить();");
    МодульСоставаОПИ.ДобавитьСтроку("    НоваяСтрока.Библиотека  = """ + СоответствиеКомандМодулей.Получить(ТекущийМодуль) + """;");
    МодульСоставаОПИ.ДобавитьСтроку("    НоваяСтрока.Модуль      = """ + ТекущийМодуль + """;");
    МодульСоставаОПИ.ДобавитьСтроку("    НоваяСтрока.Метод       = """ + ИмяМетода + """;");
    МодульСоставаОПИ.ДобавитьСтроку("    НоваяСтрока.МетодПоиска = """ + вРег(ИмяМетода) + """;");
    МодульСоставаОПИ.ДобавитьСтроку("    НоваяСтрока.Параметр    = """ + Имя + """;");
    МодульСоставаОПИ.ДобавитьСтроку("    НоваяСтрока.Описание    = """ + Описание + """;");
    МодульСоставаОПИ.ДобавитьСтроку("    НоваяСтрока.Обработка   = """ + Обработка + """;");

    Если ЗначениеЗаполнено(ОписаниеМетода) Тогда
        МодульСоставаОПИ.ДобавитьСтроку("    НоваяСтрока.ОписаниеМетода   = """ + ОписаниеМетода + """;");
    КонецЕсли;

    МодульСоставаОПИ.ДобавитьСтроку(Символы.ПС);
    
КонецПроцедуры

ПриСозданииОбъекта();