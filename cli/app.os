#Использовать cmdline
#Использовать oint
#Использовать "internal"

#Область СлужебныйПрограммныйИнтерфейс

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

#Область Основные

Процедура ОсновнойОбработчик()
	
	Парсер = Новый ПарсерАргументовКоманднойСтроки();
	
	Для Каждого Команда Из ПолучитьИмяМодуля() Цикл
		СформироватьКоманду(Команда.Ключ, Парсер);
	КонецЦикла;
	
	Результат      = Парсер.Разобрать(АргументыКоманднойСтроки);
	ТекущаяКоманда = Результат["Команда"];
	
	Если ТекущаяКоманда = Неопределено Тогда
		ВывестиНачальнуюСтраницу();
	Иначе
		ВыполнитьОбработкуКоманды(Результат);
	КонецЕсли;
	
КонецПроцедуры

Процедура СформироватьКоманду(Знач Имя, Парсер)
	
	Команда           = Парсер.ОписаниеКоманды(Имя);
	ТаблицаПараметров = ПолучитьТаблицуПараметров(Имя);
	Парсер.ДобавитьПозиционныйПараметрКоманды(Команда, "Метод");
	
	ДобавитьПараметрыКоманды(Парсер, Команда, ТаблицаПараметров);
	
	Парсер.ДобавитьКоманду(Команда);
	
КонецПроцедуры

Процедура ВыполнитьОбработкуКоманды(Знач Данные)
	
	ТекущаяКоманда = Данные["Команда"];
	Вывод		   = "";
	
	Попытка
			
		Вывод = ПолучитьРезультатОбработки(ТекущаяКоманда, Данные);
		ОбработатьВыводJSON(Вывод);

		Если ЗначениеЗаполнено(Вывод) Тогда
			Сообщить(Символы.ПС + Вывод + Символы.ПС, СтатусСообщения.Внимание);
		КонецЕсли;

	Исключение

		Если ЗначениеЗаполнено(Вывод) Тогда
			Сообщить(Вывод);
		Иначе
			Сообщить(ОписаниеОшибки(), СтатусСообщения.ОченьВажное);
			Сообщить(Символы.ПС);
		КонецЕсли;
		
	КонецПопытки;
	
КонецПроцедуры

Функция ПолучитьРезультатОбработки(Знач Команда, Знач Данные)
	
	Модуль    = ПолучитьИмяМодуля(Команда);
	Параметры = Данные["ЗначенияПараметров"];
	Метод     = Параметры["Метод"];
	Ответ     = "<пустой возврат>";

	ТаблицаПараметров = ПолучитьТаблицуПараметров(Команда);

	Если Не ЗначениеЗаполнено(Метод) Тогда
		ВывестиСправкуПоМетодам(Команда, ТаблицаПараметров);
		Возврат "";
	КонецЕсли;

	ОтборКоманды      = Новый Структура("МетодПоиска", вРег(Метод));
	ПараметрыМетода   = ТаблицаПараметров.НайтиСтроки(ОтборКоманды);
	ТекстВыполнения   = "";

	Если Параметры.Количество() = 1 Тогда
		ВывестиСправкуПоПараметрам(ПараметрыМетода);
		Возврат "";
	КонецЕсли;

	СтрокаВызова    = СформироватьСтрокуВызоваМетода(Параметры, ПараметрыМетода);
	ТекстВыполнения = ТекстВыполнения + Символы.ПС + СтрокаВызова;

	Выполнить(ТекстВыполнения);

	Возврат Ответ;
	
КонецФункции

#КонецОбласти

#Область Вспомогательные

Процедура ДобавитьПараметрыКоманды(Парсер, Команда, Знач ТаблицаПараметров);
	
	ТаблицаПараметров.Свернуть("Параметр");

	МассивПараметров = ТаблицаПараметров.ВыгрузитьКолонку("Параметр");
	
	Для Каждого Параметр Из МассивПараметров Цикл
		Парсер.ДобавитьИменованныйПараметрКоманды(Команда, Параметр);
	КонецЦикла;
	
КонецПроцедуры

Процедура ОбработатьВыводJSON()
	
	Если ТипЗнч(Вывод) = Тип("Структура")
		Или ТипЗнч(Вывод) = Тип("Соответствие")
		Или ТипЗнч(Вывод) = Тип("Массив") Тогда
	
		Вывод = OPI_Инструменты.JSONСтрокой(Вывод);

	КонецЕсли;
КонецПроцедуры

Функция СформироватьСтрокуВызоваМетода(Знач ПереданныеПараметры, Знач ПараметрыМетода)

	СтрокаВызова = Модуль + "." + Метод + "(";
	Для Каждого НеобходимыйПараметр Из ПараметрыМетода Цикл

		ЗначениеПараметра = ПереданныеПараметры.Получить(НеобходимыйПараметр.Параметр);

		Если ЗначениеЗаполнено(ЗначениеПараметра) Тогда

			ТекстВыполнения = ТекстВыполнения 
				+ Символы.ПС 
				+ НеобходимыйПараметр.Имя 
				+ " = ОбработатьВходящийПараметр(""" 
				+ ЗначениеПараметра
				+ """, """
				+ НеобходимыйПараметр.ВариантОбработки
				+ """);";

			СтрокаВызова = СтрокаВызова + НеобходимыйПараметр.Имя + ", ";

		Иначе
			СтрокаВызова = СтрокаВызова + " , ";
		КонецЕсли;

	КонецЦикла;

	СтрокаВызова = Лев(СтрокаВызова, СтрДлина(СтрокаВызова) - 2);
	СтрокаВызова = СтрокаВызова + ");";
	СтрокаВызова = "Ответ = " + СтрокаВызова;

	Возврат СтрокаВызова;

КонецФункции

#КонецОбласти

#Область ОбработкаПараметров

Функция ОбработатьВходящийПараметр(Знач Значение, Знач ВидОбработки)

	Если ВидОбработки = "СоответствиеJSON" Тогда
		ОбработатьПараметрJSON(Значение);
	ИначеЕсли ВидОбработки = "ТекстовыеДанные" Тогда
		ОбработатьПараметрТекст(Значение);
	Иначе
		Значение = Строка(Значение);
	КонецЕсли;

	Возврат Значение;
	
КонецФункции

Процедура ОбработатьПараметрJSON(Значение)

	Файл 		= Новый Файл(Значение);
	ЧтениеJSON  = Новый ЧтениеJSON;

	Если Файл.Существует() Тогда
		ЧтениеJSON.ОткрытьФайл(Значение);
		ЧтениеJSON.Прочитать();
	Иначе
		ЧтениеJSON.УстановитьСтроку(СокрЛП(Значение));
	КонецЕсли;	
	
	Значение = ПрочитатьJSON(ЧтениеJSON, Истина, Неопределено, ФорматДатыJSON.ISO);
	ЧтениеJSON.Закрыть();

КонецПроцедуры

Процедура ОбработатьПараметрТекст(Значение)

	Файл 		 = Новый Файл(Значение);

	Если Файл.Существует() Тогда
		ЧтениеТекста = Новый ЧтениеТекста(Значение);
		Значение     = ЧтениеТекста.Прочитать();
		ЧтениеТекста.Закрыть();
	Иначе
		Значение = Строка(Значение);
	КонецЕсли;

	Значение = СокрЛП(Значение);

КонецПроцедуры

#КонецОбласти

#КонецОбласти

Попытка
	ОсновнойОбработчик();	
Исключение
	Сообщить(Символы.ПС + "!!! ОШИБКА: Проверьте корректность введенных данных" + Символы.ПС, СтатусСообщения.ОченьВажное);
	Сообщить(КраткоеПредставлениеОшибки(ИнформацияОбОшибке()) + Символы.ПС, СтатусСообщения.Важное);
КонецПопытки;

