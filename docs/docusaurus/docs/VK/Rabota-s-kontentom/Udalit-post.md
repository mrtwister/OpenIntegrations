---
sidebar_position: 2
---

# Удалить пост
Удалить пост по id

*Функция УдалитьПост(Знач IDПоста, Знач Параметры = "") Экспорт*

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | IDПоста | --post | Строка/Число | ID целевого поста |
  | Параметры | --auth | Структура (необяз.) | Параметры / перезапись стандартных параметров (см. [Получение необходимых данных](../)) |
  
  Вовзращаемое значение: Соответствие - сериализованный JSON ответа от VK

```bsl title="Пример кода"
	
	Ответ = OPI_VK.УдалитьПост(212, Параметры);
	Ответ = OPI_Инструменты.JSONСтрокой(Ответ);

```

```sh title="Пример команд CLI"

    oint vk УдалитьПост --post 212 --auth C:\auth.json

```

```json title="Результат"

{
 "response": 1
}

```