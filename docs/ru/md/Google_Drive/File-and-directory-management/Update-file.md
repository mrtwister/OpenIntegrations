﻿---
sidebar_position: 8
---

# Обновить файл
 Обновляет двоичные данные файла


*Функция ОбновитьФайл(Знач Токен, Знач Идентификатор, Знач Файл, Знач НовоеИмя = "") Экспорт*

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | Токен | --token | Строка | Токен |
  | Идентификатор | --object | Строка | Идентификатор обновляемого объекта |
  | Файл | --file | ДвоичныеДанные,Строка | Файл источник обновления |
  | НовоеИмя | --title | Строка | Новое имя файла (если необходимо) |

  
  Возвращаемое значение:   Соответствие Из КлючИЗначение - сериализованный JSON ответа от Google

```bsl title="Пример кода"
	
  
  НовоеИмя          = "Обновленный файл.jpeg";
  КартинкаЗамены    = "C:\OPI\image2.jpg";
  Идентификатор     = "1V0oaZh3qQZ7-wbARC8-vrErAFllsBGSJ";
  
  Ответ = OPI_GoogleDrive.ОбновитьФайл(Токен, Идентификатор, КартинкаЗамены, НовоеИмя)  //Соответствие
  Ответ = OPI_Инструменты.JSONСтрокой(Ответ);                                           //Строка
  

	
```

```sh title="Пример команды CLI"
    
  oint gdrive ОбновитьФайл --token %token% --object "1V0oaZh3qQZ7-wbARC8-vrErAFllsBGSJ" --file %file% --title "Обновленный файл.jpeg"

```


```json title="Результат"

{
  "mimeType": "image/jpeg",
  "name": "Обновленный файл.jpg",
  "id": "1V0oaZh3qQZ7-wbARC8-vrErAFllsBGSJ",
  "kind": "drive#file"
  }

```