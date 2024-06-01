﻿Функция ПолучитьСостав() Экспорт

    ТаблицаСостава = Новый ТаблицаЗначений();
    ТаблицаСостава.Колонки.Добавить("Библиотека");
    ТаблицаСостава.Колонки.Добавить("Модуль");
    ТаблицаСостава.Колонки.Добавить("Метод");
    ТаблицаСостава.Колонки.Добавить("МетодПоиска");
    ТаблицаСостава.Колонки.Добавить("Параметр");
    ТаблицаСостава.Колонки.Добавить("Описание");
    ТаблицаСостава.Колонки.Добавить("ОписаниеМетода");
    ТаблицаСостава.Колонки.Добавить("Область");

    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ПолучитьСсылкуАвторизации";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬССЫЛКУАВТОРИЗАЦИИ";
    НоваяСтрока.Параметр    = "--appkey";
    НоваяСтрока.Описание    = "Ключ приложения";
    НоваяСтрока.Область     = "Аккаунт и авторизация";
    НоваяСтрока.ОписаниеМетода   = "Генерирует ссылку авторизации для перехода в браузере";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ПолучитьТокен";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬТОКЕН";
    НоваяСтрока.Параметр    = "--appkey";
    НоваяСтрока.Описание    = "Ключ приложения";
    НоваяСтрока.Область     = "Аккаунт и авторизация";
    НоваяСтрока.ОписаниеМетода   = "Полеучает токен на основе кода со страницы ПолучитьСсылкуАвторизации";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ПолучитьТокен";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬТОКЕН";
    НоваяСтрока.Параметр    = "--appsecret";
    НоваяСтрока.Описание    = "Секрет приложения";
    НоваяСтрока.Область     = "Аккаунт и авторизация";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ПолучитьТокен";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬТОКЕН";
    НоваяСтрока.Параметр    = "--code";
    НоваяСтрока.Описание    = "Код со страницы авторизации";
    НоваяСтрока.Область     = "Аккаунт и авторизация";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ОбновитьТокен";
    НоваяСтрока.МетодПоиска = "ОБНОВИТЬТОКЕН";
    НоваяСтрока.Параметр    = "--appkey";
    НоваяСтрока.Описание    = "Ключ приложения";
    НоваяСтрока.Область     = "Аккаунт и авторизация";
    НоваяСтрока.ОписаниеМетода   = "Получает новый токен на основе рефреш токена";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ОбновитьТокен";
    НоваяСтрока.МетодПоиска = "ОБНОВИТЬТОКЕН";
    НоваяСтрока.Параметр    = "--appsecret";
    НоваяСтрока.Описание    = "Секрет приложения";
    НоваяСтрока.Область     = "Аккаунт и авторизация";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ОбновитьТокен";
    НоваяСтрока.МетодПоиска = "ОБНОВИТЬТОКЕН";
    НоваяСтрока.Параметр    = "--refresh";
    НоваяСтрока.Описание    = "Рефреш токен";
    НоваяСтрока.Область     = "Аккаунт и авторизация";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ПолучитьИнформациюОбАккаунте";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬИНФОРМАЦИЮОБАККАУНТЕ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен";
    НоваяСтрока.Область     = "Аккаунт и авторизация";
    НоваяСтрока.ОписаниеМетода   = "Получает информацию об аккаунте";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ПолучитьИнформациюОбАккаунте";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬИНФОРМАЦИЮОБАККАУНТЕ";
    НоваяСтрока.Параметр    = "--account";
    НоваяСтрока.Описание    = "ID аккаунта. Текущий аккаунт токена, если не заполнено (необяз. по ум. - Пустое значение)";
    НоваяСтрока.Область     = "Аккаунт и авторизация";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ПолучитьДанныеИспользованияПространства";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬДАННЫЕИСПОЛЬЗОВАНИЯПРОСТРАНСТВА";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен";
    НоваяСтрока.Область     = "Аккаунт и авторизация";
    НоваяСтрока.ОписаниеМетода   = "Получает информацию о количестве использованного дискового пространства";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ПолучитьИнформациюОбОбъекте";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬИНФОРМАЦИЮОБОБЪЕКТЕ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";
    НоваяСтрока.ОписаниеМетода   = "Получает информацию о файле или каталоге";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ПолучитьИнформациюОбОбъекте";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬИНФОРМАЦИЮОБОБЪЕКТЕ";
    НоваяСтрока.Параметр    = "--path";
    НоваяСтрока.Описание    = "Путь к объекту";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ПолучитьИнформациюОбОбъекте";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬИНФОРМАЦИЮОБОБЪЕКТЕ";
    НоваяСтрока.Параметр    = "--detail";
    НоваяСтрока.Описание    = "Добавляет дополнительные поля информации для медиафайлов (необяз. по ум. - False)";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ПолучитьСписокФайловПапки";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКФАЙЛОВПАПКИ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";
    НоваяСтрока.ОписаниеМетода   = "Получает список первых файлов каталога или продолжает получение следующих при указании курсора";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ПолучитьСписокФайловПапки";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКФАЙЛОВПАПКИ";
    НоваяСтрока.Параметр    = "--path";
    НоваяСтрока.Описание    = "Путь к каталогу. Необязателен, если указан курсор (необяз. по ум. - Пустое значение)";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ПолучитьСписокФайловПапки";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКФАЙЛОВПАПКИ";
    НоваяСтрока.Параметр    = "--detail";
    НоваяСтрока.Описание    = "Добавляет дополнительные поля информации для медиафайлов (необяз. по ум. - False)";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ПолучитьСписокФайловПапки";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКФАЙЛОВПАПКИ";
    НоваяСтрока.Параметр    = "--cursor";
    НоваяСтрока.Описание    = "Курсор из предыдущего запроса для получения следующего набора файлов (необяз. по ум. - Пустое значение)";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ПолучитьПревью";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬПРЕВЬЮ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";
    НоваяСтрока.ОписаниеМетода   = "Получает PDF или HTML превью объекта (только для токументов)";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ПолучитьПревью";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬПРЕВЬЮ";
    НоваяСтрока.Параметр    = "--path";
    НоваяСтрока.Описание    = "Путь к объекту";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ЗагрузитьФайл";
    НоваяСтрока.МетодПоиска = "ЗАГРУЗИТЬФАЙЛ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";
    НоваяСтрока.ОписаниеМетода   = "Загружает файл на облачный диск";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ЗагрузитьФайл";
    НоваяСтрока.МетодПоиска = "ЗАГРУЗИТЬФАЙЛ";
    НоваяСтрока.Параметр    = "--file";
    НоваяСтрока.Описание    = "Данные файл для загрузки";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ЗагрузитьФайл";
    НоваяСтрока.МетодПоиска = "ЗАГРУЗИТЬФАЙЛ";
    НоваяСтрока.Параметр    = "--path";
    НоваяСтрока.Описание    = "Путь сохранения на Dropbox";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ЗагрузитьФайл";
    НоваяСтрока.МетодПоиска = "ЗАГРУЗИТЬФАЙЛ";
    НоваяСтрока.Параметр    = "--overwrite";
    НоваяСтрока.Описание    = "Перезаписывать файл при конфликте путей (необяз. по ум. - False)";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ЗагрузитьФайлПоURL";
    НоваяСтрока.МетодПоиска = "ЗАГРУЗИТЬФАЙЛПОURL";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";
    НоваяСтрока.ОписаниеМетода   = "Загружает файл на облачный диск, получая его по указанному URL";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ЗагрузитьФайлПоURL";
    НоваяСтрока.МетодПоиска = "ЗАГРУЗИТЬФАЙЛПОURL";
    НоваяСтрока.Параметр    = "--url";
    НоваяСтрока.Описание    = "URL источник файла";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ЗагрузитьФайлПоURL";
    НоваяСтрока.МетодПоиска = "ЗАГРУЗИТЬФАЙЛПОURL";
    НоваяСтрока.Параметр    = "--path";
    НоваяСтрока.Описание    = "Путь сохранения на Dropbox";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ПолучитьСтатусЗагрузкиПоURL";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСТАТУСЗАГРУЗКИПОURL";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";
    НоваяСтрока.ОписаниеМетода   = "Получает статус загрузки файла по URL";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ПолучитьСтатусЗагрузкиПоURL";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСТАТУСЗАГРУЗКИПОURL";
    НоваяСтрока.Параметр    = "--job";
    НоваяСтрока.Описание    = "ID асинхронной работы из ответа ЗагрузитьФайлПоURL";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "УдалитьОбъект";
    НоваяСтрока.МетодПоиска = "УДАЛИТЬОБЪЕКТ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";
    НоваяСтрока.ОписаниеМетода   = "Удаляет объект с облачного диска";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "УдалитьОбъект";
    НоваяСтрока.МетодПоиска = "УДАЛИТЬОБЪЕКТ";
    НоваяСтрока.Параметр    = "--path";
    НоваяСтрока.Описание    = "Путь к объекту удаления";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "УдалитьОбъект";
    НоваяСтрока.МетодПоиска = "УДАЛИТЬОБЪЕКТ";
    НоваяСтрока.Параметр    = "--permanently";
    НоваяСтрока.Описание    = "Удалить объект без возможности востановления";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "КопироватьОбъект";
    НоваяСтрока.МетодПоиска = "КОПИРОВАТЬОБЪЕКТ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";
    НоваяСтрока.ОписаниеМетода   = "Копирует файл или каталог по выбранному пути";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "КопироватьОбъект";
    НоваяСтрока.МетодПоиска = "КОПИРОВАТЬОБЪЕКТ";
    НоваяСтрока.Параметр    = "--form";
    НоваяСтрока.Описание    = "Путь к объекту оригинала";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "КопироватьОбъект";
    НоваяСтрока.МетодПоиска = "КОПИРОВАТЬОБЪЕКТ";
    НоваяСтрока.Параметр    = "--to";
    НоваяСтрока.Описание    = "Целевой путь для нового объекта";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ПереместитьОбъект";
    НоваяСтрока.МетодПоиска = "ПЕРЕМЕСТИТЬОБЪЕКТ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";
    НоваяСтрока.ОписаниеМетода   = "Перемещает объект по выбранному пути";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ПереместитьОбъект";
    НоваяСтрока.МетодПоиска = "ПЕРЕМЕСТИТЬОБЪЕКТ";
    НоваяСтрока.Параметр    = "--form";
    НоваяСтрока.Описание    = "Путь к объекту оригинала";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ПереместитьОбъект";
    НоваяСтрока.МетодПоиска = "ПЕРЕМЕСТИТЬОБЪЕКТ";
    НоваяСтрока.Параметр    = "--to";
    НоваяСтрока.Описание    = "Целевой путь для нового объекта";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "СоздатьПапку";
    НоваяСтрока.МетодПоиска = "СОЗДАТЬПАПКУ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";
    НоваяСтрока.ОписаниеМетода   = "Создает пустой каталог по выбранному пути";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "СоздатьПапку";
    НоваяСтрока.МетодПоиска = "СОЗДАТЬПАПКУ";
    НоваяСтрока.Параметр    = "--path";
    НоваяСтрока.Описание    = "Целевой путь создания каталога";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "СкачатьФайл";
    НоваяСтрока.МетодПоиска = "СКАЧАТЬФАЙЛ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";
    НоваяСтрока.ОписаниеМетода   = "Скачивает файл по указанному пути или ID";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "СкачатьФайл";
    НоваяСтрока.МетодПоиска = "СКАЧАТЬФАЙЛ";
    НоваяСтрока.Параметр    = "--path";
    НоваяСтрока.Описание    = "Путь или ID файла";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "СкачатьПапку";
    НоваяСтрока.МетодПоиска = "СКАЧАТЬПАПКУ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";
    НоваяСтрока.ОписаниеМетода   = "Скачивает zip архив с содержимым указанного каталога";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "СкачатьПапку";
    НоваяСтрока.МетодПоиска = "СКАЧАТЬПАПКУ";
    НоваяСтрока.Параметр    = "--path";
    НоваяСтрока.Описание    = "Путь или ID каталога";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ПолучитьСписокВерсийОбъекта";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКВЕРСИЙОБЪЕКТА";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";
    НоваяСтрока.ОписаниеМетода   = "Получает список версий (ревизий) объекта";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ПолучитьСписокВерсийОбъекта";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКВЕРСИЙОБЪЕКТА";
    НоваяСтрока.Параметр    = "--path";
    НоваяСтрока.Описание    = "Путь к объекту";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ПолучитьСписокВерсийОбъекта";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКВЕРСИЙОБЪЕКТА";
    НоваяСтрока.Параметр    = "--amount";
    НоваяСтрока.Описание    = "Число последних версий объекта для отображения (необяз. по ум. - 10)";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ВосстановитьОбъектКВерсии";
    НоваяСтрока.МетодПоиска = "ВОССТАНОВИТЬОБЪЕКТКВЕРСИИ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";
    НоваяСтрока.ОписаниеМетода   = "Восстанавливает состояние объекта к необходимой версии (ревизии)";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ВосстановитьОбъектКВерсии";
    НоваяСтрока.МетодПоиска = "ВОССТАНОВИТЬОБЪЕКТКВЕРСИИ";
    НоваяСтрока.Параметр    = "--path";
    НоваяСтрока.Описание    = "Путь к объекту";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ВосстановитьОбъектКВерсии";
    НоваяСтрока.МетодПоиска = "ВОССТАНОВИТЬОБЪЕКТКВЕРСИИ";
    НоваяСтрока.Параметр    = "--rev";
    НоваяСтрока.Описание    = "ID версии (ревизии) для востановления";
    НоваяСтрока.Область     = "Работа с файлами и каталогами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ПолучитьСписокТегов";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКТЕГОВ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен";
    НоваяСтрока.Область     = "Работа с тегами";
    НоваяСтрока.ОписаниеМетода   = "Получает список тегов выбранных файлов
    |
    |    Пример указания параметра типа массив:
    |    --param ""['Val1','Val2','Val3']""
    |";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ПолучитьСписокТегов";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСПИСОКТЕГОВ";
    НоваяСтрока.Параметр    = "--paths";
    НоваяСтрока.Описание    = "Путь или набору путей к файлам";
    НоваяСтрока.Область     = "Работа с тегами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ДобавитьТег";
    НоваяСтрока.МетодПоиска = "ДОБАВИТЬТЕГ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен";
    НоваяСтрока.Область     = "Работа с тегами";
    НоваяСтрока.ОписаниеМетода   = "Добавляет новый текстовый тег к файлу или каталогу";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ДобавитьТег";
    НоваяСтрока.МетодПоиска = "ДОБАВИТЬТЕГ";
    НоваяСтрока.Параметр    = "--path";
    НоваяСтрока.Описание    = "Путь к объекту, для которого необходимо создать тег";
    НоваяСтрока.Область     = "Работа с тегами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ДобавитьТег";
    НоваяСтрока.МетодПоиска = "ДОБАВИТЬТЕГ";
    НоваяСтрока.Параметр    = "--tag";
    НоваяСтрока.Описание    = "Текст тега";
    НоваяСтрока.Область     = "Работа с тегами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "УдалитьТег";
    НоваяСтрока.МетодПоиска = "УДАЛИТЬТЕГ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен";
    НоваяСтрока.Область     = "Работа с тегами";
    НоваяСтрока.ОписаниеМетода   = "Удаляет текстовый тег файла или каталога";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "УдалитьТег";
    НоваяСтрока.МетодПоиска = "УДАЛИТЬТЕГ";
    НоваяСтрока.Параметр    = "--path";
    НоваяСтрока.Описание    = "Путь к объекту, тег которого необходимо удалить";
    НоваяСтрока.Область     = "Работа с тегами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "УдалитьТег";
    НоваяСтрока.МетодПоиска = "УДАЛИТЬТЕГ";
    НоваяСтрока.Параметр    = "--tag";
    НоваяСтрока.Описание    = "Текст тега";
    НоваяСтрока.Область     = "Работа с тегами";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ОпубликоватьПапку";
    НоваяСтрока.МетодПоиска = "ОПУБЛИКОВАТЬПАПКУ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен";
    НоваяСтрока.Область     = "Настройки совместного доступа";
    НоваяСтрока.ОписаниеМетода   = "Переводит каталог в режим публичного доступа";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ОпубликоватьПапку";
    НоваяСтрока.МетодПоиска = "ОПУБЛИКОВАТЬПАПКУ";
    НоваяСтрока.Параметр    = "--path";
    НоваяСтрока.Описание    = "Путь к целевому каталогу";
    НоваяСтрока.Область     = "Настройки совместного доступа";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ОтменитьПубликациюПапки";
    НоваяСтрока.МетодПоиска = "ОТМЕНИТЬПУБЛИКАЦИЮПАПКИ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен";
    НоваяСтрока.Область     = "Настройки совместного доступа";
    НоваяСтрока.ОписаниеМетода   = "Отменяет режим общего доступа для каталога";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ОтменитьПубликациюПапки";
    НоваяСтрока.МетодПоиска = "ОТМЕНИТЬПУБЛИКАЦИЮПАПКИ";
    НоваяСтрока.Параметр    = "--folder";
    НоваяСтрока.Описание    = "ID публичного каталога (shared folder ID)";
    НоваяСтрока.Область     = "Настройки совместного доступа";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ДобавитьПользователейКФайлу";
    НоваяСтрока.МетодПоиска = "ДОБАВИТЬПОЛЬЗОВАТЕЛЕЙКФАЙЛУ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен";
    НоваяСтрока.Область     = "Настройки совместного доступа";
    НоваяСтрока.ОписаниеМетода   = "Определяет доступ к файлу для стороннего пользователя
    |
    |    Пример указания параметра типа массив:
    |    --param ""['Val1','Val2','Val3']""
    |";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ДобавитьПользователейКФайлу";
    НоваяСтрока.МетодПоиска = "ДОБАВИТЬПОЛЬЗОВАТЕЛЕЙКФАЙЛУ";
    НоваяСтрока.Параметр    = "--fileid";
    НоваяСтрока.Описание    = "ID файла, к которому предоставляется доступ";
    НоваяСтрока.Область     = "Настройки совместного доступа";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ДобавитьПользователейКФайлу";
    НоваяСтрока.МетодПоиска = "ДОБАВИТЬПОЛЬЗОВАТЕЛЕЙКФАЙЛУ";
    НоваяСтрока.Параметр    = "--emails";
    НоваяСтрока.Описание    = "Список адресов почты добавляемых пользователей";
    НоваяСтрока.Область     = "Настройки совместного доступа";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ДобавитьПользователейКФайлу";
    НоваяСтрока.МетодПоиска = "ДОБАВИТЬПОЛЬЗОВАТЕЛЕЙКФАЙЛУ";
    НоваяСтрока.Параметр    = "--readonly";
    НоваяСтрока.Описание    = "Запрещает редактирование файла для стороннего пользователя (необяз. по ум. - True)";
    НоваяСтрока.Область     = "Настройки совместного доступа";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ДобавитьПользователейКПапке";
    НоваяСтрока.МетодПоиска = "ДОБАВИТЬПОЛЬЗОВАТЕЛЕЙКПАПКЕ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен";
    НоваяСтрока.Область     = "Настройки совместного доступа";
    НоваяСтрока.ОписаниеМетода   = "Предоставляет стороннии пользователям доступ к каталогу
    |
    |    Пример указания параметра типа массив:
    |    --param ""['Val1','Val2','Val3']""
    |";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ДобавитьПользователейКПапке";
    НоваяСтрока.МетодПоиска = "ДОБАВИТЬПОЛЬЗОВАТЕЛЕЙКПАПКЕ";
    НоваяСтрока.Параметр    = "--folder";
    НоваяСтрока.Описание    = "ID публичного каталога (shared folder ID)";
    НоваяСтрока.Область     = "Настройки совместного доступа";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ДобавитьПользователейКПапке";
    НоваяСтрока.МетодПоиска = "ДОБАВИТЬПОЛЬЗОВАТЕЛЕЙКПАПКЕ";
    НоваяСтрока.Параметр    = "--emails";
    НоваяСтрока.Описание    = "Список адресов почты добавляемых пользователей";
    НоваяСтрока.Область     = "Настройки совместного доступа";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ДобавитьПользователейКПапке";
    НоваяСтрока.МетодПоиска = "ДОБАВИТЬПОЛЬЗОВАТЕЛЕЙКПАПКЕ";
    НоваяСтрока.Параметр    = "--readonly";
    НоваяСтрока.Описание    = "Запрещает редактирование файла для стороннего пользователя (необяз. по ум. - True)";
    НоваяСтрока.Область     = "Настройки совместного доступа";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ПолучитьСтатусАсинхронногоИзменения";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСТАТУСАСИНХРОННОГОИЗМЕНЕНИЯ";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен";
    НоваяСтрока.Область     = "Настройки совместного доступа";
    НоваяСтрока.ОписаниеМетода   = "Получает статус асинхронной работы по изменению доступов";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ПолучитьСтатусАсинхронногоИзменения";
    НоваяСтрока.МетодПоиска = "ПОЛУЧИТЬСТАТУСАСИНХРОННОГОИЗМЕНЕНИЯ";
    НоваяСтрока.Параметр    = "--job";
    НоваяСтрока.Описание    = "ID асинхронной работы";
    НоваяСтрока.Область     = "Настройки совместного доступа";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ОтменитьПубликациюФайла";
    НоваяСтрока.МетодПоиска = "ОТМЕНИТЬПУБЛИКАЦИЮФАЙЛА";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Токен";
    НоваяСтрока.Область     = "Настройки совместного доступа";
    НоваяСтрока.ОписаниеМетода   = "Запрещает доступ к файлу для внешних пользователей";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "dropbox";
    НоваяСтрока.Модуль      = "OPI_Dropbox";
    НоваяСтрока.Метод       = "ОтменитьПубликациюФайла";
    НоваяСтрока.МетодПоиска = "ОТМЕНИТЬПУБЛИКАЦИЮФАЙЛА";
    НоваяСтрока.Параметр    = "--fileid";
    НоваяСтрока.Описание    = "ID файла, к которому предоставляется доступ";
    НоваяСтрока.Область     = "Настройки совместного доступа";

    Возврат ТаблицаСостава;
КонецФункции

