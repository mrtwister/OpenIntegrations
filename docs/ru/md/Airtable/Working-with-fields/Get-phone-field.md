﻿---
sidebar_position: 9
---

# Получить поле (телефон)
 Получает описание поля с номером телефона


*Функция ПолучитьПолеТелефона(Знач Наименование) Экспорт*

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | Наименование | --title | Строка | Наименование поля |

  
  Возвращаемое значение:   Структура -  Описание поля

```bsl title="Пример кода"
	
      
      Наименование = "Телефон";
      
      Ответ = OPI_Airtable.ПолучитьПолеТелефона(Наименование); //Соответствие
      Ответ = OPI_Инструменты.JSONСтрокой(Ответ);              //JSON строка
      
    
	
```

```sh title="Пример команды CLI"
    
      oint airtable ПолучитьПолеТелефона --title "Телефон"


```


```json title="Результат"

{
  "name": "Телефон",
  "type": "phoneNumber"
  }

```