// MIT License

// Copyright (c) 2023 Anton Tsitavets

// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

// https://github.com/Bayselonarrend/OpenIntegrations

#Область ПрограммныйИнтерфейс

#Область РаботаСоСпискомКалендарей

// Получить список календарей.
// 
// Параметры:
//  Токен - Строка - Токен
// 
// Возвращаемое значение:
//  Соответствие Из КлючИЗначение - Массив соответствий данных календарей
Функция ПолучитьСписокКалендарей(Знач Токен) Экспорт
    
    Заголовки        = ПолучитьЗаголовокАвторизации(Токен);
    МассивКалендарей = Новый Массив;
    
    ПолучитьСписокКалендарейРекурсивно(Заголовки, МассивКалендарей);
    
    Возврат МассивКалендарей;
    
КонецФункции

// Добавить календарь в список.
// 
// Параметры:
//  Токен - Строка - Токен
//  Календарь - Строка - ID календаря
// 
// Возвращаемое значение:
//  Строка, Произвольный, ДвоичныеДанные, Неопределено, HTTPОтвет - ответ сервера Google
Функция ДобавитьКалендарьВСписок(Знач Токен, Знач Календарь) Экспорт
    
    Заголовки = ПолучитьЗаголовокАвторизации(Токен);
    URL       = "https://www.googleapis.com/calendar/v3/users/me/calendarList";
    
    Параметры = Новый Структура;
    Параметры.Вставить("id", Календарь);
    
    Ответ = OPI_Инструменты.Post(URL, Параметры, Заголовки);
    
    Возврат Ответ;
    
КонецФункции

#КонецОбласти

#Область РаботаСКалендарями

// Создать календарь.
// 
// Параметры:
//  Токен - Строка - Токен
//  Наименование - Строка - Наименование создаваемого календаря
// 
// Возвращаемое значение:
//  Строка, Произвольный, ДвоичныеДанные, Неопределено, HTTPОтвет - ответ сервера Google
Функция СоздатьКалендарь(Знач Токен, Знач Наименование) Экспорт
    
    Заголовки = ПолучитьЗаголовокАвторизации(Токен);
    URL       = "https://www.googleapis.com/calendar/v3/calendars";
    
    Параметры = Новый Структура;
    Параметры.Вставить("summary", Наименование);
    
    Ответ = OPI_Инструменты.Post(URL, Параметры, Заголовки);
    
    Возврат Ответ;
    
КонецФункции

// Получить календарь.
// 
// Параметры:
//  Токен - Строка - Токен
//  Календарь - Строка - ID календаря
// 
// Возвращаемое значение:
//  Строка, Произвольный, ДвоичныеДанные, Неопределено, HTTPОтвет - ответ сервера Google
Функция ПолучитьКалендарь(Знач Токен, Знач Календарь) Экспорт
    
    Заголовки = ПолучитьЗаголовокАвторизации(Токен);
    URL       = "https://www.googleapis.com/calendar/v3/calendars/" + Календарь;    
    Ответ     = OPI_Инструменты.Get(URL, , Заголовки);
    
    Возврат Ответ;

КонецФункции

// Изменить календарь.
// 
// Параметры:
//  Токен - Строка - Токен
//  Календарь - Строка - ID календаря
//  Наименование - Строка - Новое наименование
//  Описание - Строка - Новое описание календаря
// 
// Возвращаемое значение:
//  Строка, Произвольный, ДвоичныеДанные, Неопределено, HTTPОтвет - ответ сервера Google
Функция ИзменитьКалендарь(Знач Токен, Знач Календарь, Знач Наименование = "", Знач Описание = "") Экспорт
    
    Заголовки = ПолучитьЗаголовокАвторизации(Токен);
    URL       = "https://www.googleapis.com/calendar/v3/calendars/" + Календарь;
    
    Параметры = Новый Структура;
    
    Если ЗначениеЗаполнено(Наименование) Тогда
        Параметры.Вставить("summary", Наименование);
    КонецЕсли;
    
    Если ЗначениеЗаполнено(Описание) Тогда
        Параметры.Вставить("description", Описание);
    КонецЕсли;
    
    Ответ = OPI_Инструменты.Put(URL, Параметры, Заголовки);
    
    Возврат Ответ;

КонецФункции

// Удалить календарь.
// 
// Параметры:
//  Токен - Строка - Токен
//  Календарь - Строка - ID календаря
// 
// Возвращаемое значение:
//  Строка, Произвольный, ДвоичныеДанные, Неопределено, HTTPОтвет - ответ сервера Google
Функция УдалитьКалендарь(Знач Токен, Знач Календарь) Экспорт
    
    Заголовки = ПолучитьЗаголовокАвторизации(Токен);
    URL       = "https://www.googleapis.com/calendar/v3/calendars/" + Календарь;       
    Ответ     = OPI_Инструменты.Delete(URL, , Заголовки);
    
    Возврат Ответ;

КонецФункции

#КонецОбласти

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

Функция ПолучитьЗаголовокАвторизации(Знач Токен) 
    
    Заголовки = Новый Соответствие;
    Заголовки.Вставить("Authorization", "Bearer " + Токен);
    
    Возврат Заголовки;
    
КонецФункции

Процедура ПолучитьСписокКалендарейРекурсивно(Знач Заголовки, МассивКалендарей, Страница = "") 
    
    Параметры = Новый Структура;
    
    Если ЗначениеЗаполнено(Страница) Тогда
        Параметры.Вставить("pageToken", Страница);
    КонецЕсли;
    
    Результат = OPI_Инструменты.Get("https://www.googleapis.com/calendar/v3/users/me/calendarList"
        , 
        , Заголовки);
        
    Календари = Результат["items"];
    Страница  = Результат["nextPageToken"];
        
    Для Каждого Календарь Из Календари Цикл
        МассивКалендарей.Добавить(Календарь);    
    КонецЦикла;    
    
    Если Календари.Количество() > 0 И ЗначениеЗаполнено(Страница) Тогда
        ПолучитьСписокКалендарейРекурсивно(Заголовки, МассивКалендарей, Страница); 
    КонецЕсли;
          
КонецПроцедуры

#КонецОбласти