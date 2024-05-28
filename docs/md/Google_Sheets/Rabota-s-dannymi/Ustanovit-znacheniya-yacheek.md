﻿---
sidebar_position: 1
---

# Установить значения ячеек
 Устанавливает значения ячеек листа


*Функция УстановитьЗначенияЯчеек(Знач Токен, Знач Книга, Знач СоответствиеЗначений, Знач Лист = "", Знач ОсновноеИзмерение = "COLUMNS") Экспорт*

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | Токен | --token | Строка | Токен |
  | Книга | --spreadsheet | Строка | ID книги |
  | СоответствиеЗначений | --data | Соответствие Из КлючИЗначение | Данные заполнения, где ключ это имя ячейки вида A1 |
  | Лист | --sheetname | Строка | Имя листа (первый лист по умолчанию) |
  | ОсновноеИзмерение | --dim | Строка | Основное измерение при заполнении диапазона массивом |

  
  Вовзращаемое значение:   Соответствие Из КлючИЗначение - сериализованный JSON ответа от Google

```bsl title="Пример кода"
	

	
```

```sh title="Пример команд CLI"
    
  oint gsheets УстановитьЗначенияЯчеек --token %token% --spreadsheet %spreadsheet% --data %data% --sheetname %sheetname% --dim %dim%

```


```json title="Результат"



```