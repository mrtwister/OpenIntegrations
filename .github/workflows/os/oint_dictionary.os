Перем СписокЯзыков;
Перем ОбщийМассивСлов;
Перем Алфавит;
Перем МассивСимволов;

Процедура ПолучитьСписокЯзыков() Экспорт

	СписокЯзыков = Новый Массив();
	СписокЯзыков.Добавить("en");

КонецПроцедуры

Процедура СоздатьСловари()

	ПолучитьСписокЯзыков();
	ПолучитьАлфавит();
	ПолучитьМассивСимволов();

	Для Каждого Язык Из СписокЯзыков Цикл
		СоздатьСловарь(Язык);
	КонецЦикла;

КонецПроцедуры

Процедура СоздатьСловарь(Знач Язык)

	ФайлыМодулей  = НайтиФайлы("./ru/", "*.os", Истина);
	СписокСлов    = Новый СписокЗначений();

	Для Каждого Модуль Из ФайлыМодулей Цикл
		Если СтрНайти(Модуль.ПолноеИмя, "cli\data") <> 0 Тогда
			Продолжить;
		КонецЕсли;
		ПолучитьМассивСловОригинала(Модуль.ПолноеИмя, СписокСлов);
	КонецЦикла;

	ПутьСловаря         = "./service/dictionaries/" + Язык + ".json";
	ФайлСловаря         = Новый Файл(ПутьСловаря);

	СоответствиеСловаря              = Новый Соответствие();
	СоответствиеСуществующегоСловаря = Новый Соответствие();

	Если ФайлСловаря.Существует() Тогда

		ЧтениеJSON = Новый ЧтениеJSON();
		ЧтениеJSON.ОткрытьФайл(ПутьСловаря);
		СоответствиеСуществующегоСловаря = ПрочитатьJSON(ЧтениеJSON, Истина);
		ЧтениеJSON.Закрыть();

	КонецЕсли;

	//СписокСлов.СортироватьПоПредставлению(НаправлениеСортировки.Убыв);

	Для Каждого Слово Из СписокСлов Цикл

		Значение     = Слово.Значение;
		Существующее = СоответствиеСуществующегоСловаря[Значение];

		Если Существующее = Неопределено Тогда
			СоответствиеСловаря.Вставить(Значение, "");
		Иначе
			СоответствиеСловаря.Вставить(Значение, Существующее);
		КонецЕсли;

	КонецЦикла;

	ЗаписатьJSONСловаря(СоответствиеСловаря, ПутьСловаря);

КонецПроцедуры

Процедура ЗаписатьJSONСловаря(СоответствиеСловаря, ПутьСловаря)

	ТекстовыйДок = Новый ТекстовыйДокумент();
	ТекстовыйДок.ДобавитьСтроку("{");

	ТЗ = Новый ТаблицаЗначений();
	ТЗ.Колонки.Добавить("Ключ");
	ТЗ.Колонки.Добавить("Значение");
	ТЗ.Колонки.Добавить("ДлинаКлюча");
	ТЗ.Колонки.Добавить("Заполнено");

	Для Каждого Элемент Из СоответствиеСловаря Цикл

		НоваяСтрока = ТЗ.Добавить();
		НоваяСтрока.Ключ = Элемент.Ключ;
		НоваяСтрока.Значение = Элемент.Значение;
		НоваяСтрока.ДлинаКлюча = СтрДлина(Элемент.Ключ);
		НоваяСтрока.Заполнено = ЗначениеЗаполнено(Элемент.Значение);

	КонецЦикла;

	ТЗ.Сортировать("Заполнено УБЫВ, ДлинаКлюча");

	Для Каждого СтрокаТЗ Из ТЗ Цикл
		Значение = СтрокаТЗ.Значение;
		Значение = СтрЗаменить(Значение, "\", "\\");
		Значение = СтрЗаменить(Значение, "/", "\/");
		Значение = СтрЗаменить(Значение, """", "\""");

		Ключ = СтрокаТЗ.Ключ;
		Ключ = СтрЗаменить(Ключ, "\", "\\");
		Ключ = СтрЗаменить(Ключ, "/", "\/");
		Ключ = СтрЗаменить(Ключ, """", "\""");

		ТекстовыйДок.ДобавитьСтроку("""" + Ключ + """: """ + Значение + """,");
	КонецЦикла;

	ТекстовыйДок.ДобавитьСтроку("}");
	ТекстовыйДок.Записать(ПутьСловаря);

КонецПроцедуры

Процедура ПолучитьМассивСловОригинала(Знач ПутьКФайлу, СписокСлов)

	Документ = Новый ТекстовыйДокумент();
	Документ.Прочитать(ПутьКФайлу, "UTF-8");

	Для Н = 1 По Документ.КоличествоСтрок() Цикл

		ТекущаяСтрока = СокрЛП(Документ.ПолучитьСтроку(Н));

		Если СтрНачинаетсяС(ТекущаяСтрока, "//") Тогда
			ТекущаяСтрока = СокрЛП(СтрЗаменить(ТекущаяСтрока, "//", ""));
			ТекущаяСтрока = СтрЗаменить(ТекущаяСтрока, " - ", "$");
			ТекущаяСтрока = СтрРазделить(ТекущаяСтрока, "$", Ложь);

			Для Каждого Элемент Из ТекущаяСтрока Цикл
				ДобавитьСлово(СписокСлов, Элемент);
			КонецЦикла;

			Продолжить;
		КонецЕсли;

		Если СтрНайти(ТекущаяСтрока, """") <> 0 Или СтрНайти(ТекущаяСтрока, "|") <> 0 Тогда
			ТекущаяСтрока = " " + ТекущаяСтрока;
			
			ТекущаяСтрока = СтрЗаменить(ТекущаяСтрока, """", "$");
			ТекущаяСтрока = СтрЗаменить(ТекущаяСтрока, "|", "$");
			ТекущаяСтрока = СтрЗаменить(ТекущаяСтрока, "$$", """""");

			МассивСтроки = СтрРазделить(ТекущаяСтрока, "$", Истина);

			Цельный = Ложь;
			Для Каждого Элемент Из МассивСтроки Цикл

				Если Не ЗначениеЗаполнено(СокрЛП(Элемент)) Тогда
					Продолжить;
				КонецЕсли;

				Если Цельный Тогда
					ДобавитьСлово(СписокСлов, Элемент);
				Иначе
					РазобратьОбычнуюСтроку(Элемент, СписокСлов);
				КонецЕсли;

				Цельный = Не Цельный;
			КонецЦикла;
			
		Иначе
			РазобратьОбычнуюСтроку(ТекущаяСтрока, СписокСлов);
		КонецЕсли;
		
	КонецЦикла;

КонецПроцедуры

Процедура РазобратьОбычнуюСтроку(Элемент, СписокСлов)

	Для Каждого Символ Из МассивСимволов Цикл
		Элемент = СтрЗаменить(Элемент, Символ, "$");
	КонецЦикла;

	Пока СтрНайти(Элемент, "$$") <> 0 Цикл
		Элемент = СтрЗаменить(Элемент, "$$", "$");
	КонецЦикла;

	МассивЭлемента = СтрРазделить(Элемент, "$", Ложь);
	Для Каждого Дробный Из МассивЭлемента Цикл
		ДобавитьСлово(СписокСлов, Дробный);
	КонецЦикла;
	
КонецПроцедуры

Процедура ДобавитьСлово(Список, Слово)
	
	Слово = СокрЛП(Слово);

	Нормализовано = Ложь;
	
	Пока Не Нормализовано Цикл

		ПервыйСимвол    = Ложь;
		ПоследнийСимвол = Ложь;

		Для Каждого Символ Из МассивСимволов Цикл

			ПервыйСимвол    = СтрНачинаетсяС(Слово, Символ);
			ПоследнийСимвол = СтрЗаканчиваетсяНа(Слово, Символ);

			Если ПервыйСимвол Или ПоследнийСимвол Тогда
				Прервать;
			КонецЕсли;

		КонецЦикла;

		Если ПервыйСимвол Тогда
			Слово = Лев(Слово, СтрДлина(Слово) - 1);
		КонецЕсли;

		Если ПоследнийСимвол Тогда
			Слово = Прав(Слово, СтрДлина(Слово) - 1);
		КонецЕсли;

		Если Не ПервыйСимвол И Не ПоследнийСимвол Тогда
			Нормализовано = Истина;
		КонецЕсли;

	КонецЦикла;

	Слово = СокрЛП(Слово);

	Если Не ЗначениеЗаполнено(Слово) Или Не НайтиКириллицу(Слово) Тогда
		Возврат;
	КонецЕсли;

	СуществующееЗначение = Список.НайтиПоЗначению(Слово);

	Если СуществующееЗначение = Неопределено Тогда
		Список.Добавить(Слово, СтрДлина(Слово));
	КонецЕсли;

КонецПроцедуры

Процедура ПолучитьАлфавит()

	Алфавит = Новый Массив;
	
	Алфавит.Добавить("а");
	Алфавит.Добавить("б");
	Алфавит.Добавить("в");
	Алфавит.Добавить("г");
	Алфавит.Добавить("д");
	Алфавит.Добавить("е");
	Алфавит.Добавить("ё");
	Алфавит.Добавить("ж");
	Алфавит.Добавить("з");
	Алфавит.Добавить("и");
	Алфавит.Добавить("й");
	Алфавит.Добавить("к");
	Алфавит.Добавить("л");
	Алфавит.Добавить("м");
	Алфавит.Добавить("н");
	Алфавит.Добавить("о");
	Алфавит.Добавить("п");
	Алфавит.Добавить("р");
	Алфавит.Добавить("с");
	Алфавит.Добавить("т");
	Алфавит.Добавить("у");
	Алфавит.Добавить("ф");
	Алфавит.Добавить("х");
	Алфавит.Добавить("ц");
	Алфавит.Добавить("ч");
	Алфавит.Добавить("ш");
	Алфавит.Добавить("щ");
	Алфавит.Добавить("ъ");
	Алфавит.Добавить("ы");
	Алфавит.Добавить("ь");
	Алфавит.Добавить("э");
	Алфавит.Добавить("ю");
	Алфавит.Добавить("я");
	
КонецПроцедуры

Процедура ПолучитьМассивСимволов()

	МассивСимволов = Новый Массив();
	МассивСимволов.Добавить(";");
	МассивСимволов.Добавить(".");
	МассивСимволов.Добавить(",");
	МассивСимволов.Добавить(")");
	МассивСимволов.Добавить("(");
	МассивСимволов.Добавить("/");
	МассивСимволов.Добавить("\");
	МассивСимволов.Добавить("[");
	МассивСимволов.Добавить("]");
	МассивСимволов.Добавить("=");
	МассивСимволов.Добавить("+");
	МассивСимволов.Добавить("-");
	МассивСимволов.Добавить("*");
	МассивСимволов.Добавить("#");
	МассивСимволов.Добавить(" ");
	МассивСимволов.Добавить("""");
	
КонецПроцедуры

Функция НайтиКириллицу(Знач Слово)

	СловоНРег = НРег(Слово);

	Для Каждого Буква Из Алфавит Цикл
		Если СтрНайти(СловоНРег, Буква) <> 0 Тогда
			Возврат Истина;
		КонецЕсли;
	КонецЦикла;

	Возврат Ложь;

КонецФункции

СоздатьСловари();

