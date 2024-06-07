﻿---
sidebar_position: 2
---

# Очистить ячейки
 Очищает значение в ячейках


*Функция ОчиститьЯчейки(Знач Токен, Знач Книга, Знач МассивЯчеек, Знач Лист = "") Экспорт*

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | Токен | --token | Строка | Токен |
  | Книга | --spreadsheet | Строка | ID книги |
  | МассивЯчеек | --cells | Массив из Строка | Массив ячеек вида А1 для очистки |
  | Лист | --sheetname | Строка | Имя листа (первый лист по умолчанию) |

  
  Возвращаемое значение:   Соответствие Из КлючИЗначение - сериализованный JSON ответа от Google

```bsl title="Пример кода"
	
      
      МассивЯчеек = Новый Массив;
      МассивЯчеек.Добавить("B2");
      МассивЯчеек.Добавить("A3");
      МассивЯчеек.Добавить("B4");
      
      Книга = "1Pu07Y5UiGVfW4fqfP7tcSQtdSX_2wdm2Ih23zlxJJwc";
      Лист  = "Лист2";
      
      Ответ = OPI_GoogleSheets.ОчиститьЯчейки(Токен, Книга, МассивЯчеек, Лист); //Соответствие
      Ответ = OPI_Инструменты.JSONСтрокой(Ответ);                               //JSON строка
      
    
	
```

```sh title="Пример команды CLI"
    
      oint gsheets ОчиститьЯчейки --token %token% --spreadsheet "1Pu07Y5UiGVfW4fqfP7tcSQtdSX_2wdm2Ih23zlxJJwc" --cells %cells% --sheetname "Лист2"


```


```json title="Результат"

{
  "spreadsheetId": "1Pu07Y5UiGVfW4fqfP7tcSQtdSX_2wdm2Ih23zlxJJwc",
  "clearedRanges": [
  "'Лист2'!B2",
  "'Лист2'!A3",
  "'Лист2'!B4"
  ]
  }

```