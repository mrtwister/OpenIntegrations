---
sidebar_position: 8
---

# Удалить объект
Удаляет или помещает в корзину объект Диска

*Функция УдалитьОбъект(Знач Токен, Знач Путь, Знач ВКорзину = Истина) Экспорт*

  | Параметр | Тип | Назначение |
  |-|-|-|
  | Токен | Строка | Токен доступа |
  | Путь | Строка | Путь к объекту на Диске |
  | ВКоризну | Булеов(необяз.) | Истина - помещает в корзину, Ложь - удаляет навсегда|
  
  Вовзращаемое значение: Соответствие - сериализованный JSON ответа от Yandex

```bsl title="Пример кода"
			
    Токен = "y0_AgAAAABdylaOAA...";   
    Путь  = "/Альпака.png"
    Ответ = OPI_YandexDisk.УдалитьОбъект(Токен, Путь);  //Соответствие
    Ответ = OPI_Инструменты.JSONСтрокой(Ответ);         //Строка

```

![Результат](img/6.png)


```json title="Результат"

<пустая строка>

```