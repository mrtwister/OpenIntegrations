﻿// MIT License

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

// BSLLS:Typo-off

// Раскомментировать, если выполняется OneScript
#Использовать "../../tools"

#Область ПрограммныйИнтерфейс

#Область ДанныеИНастройка

// Получить информацию бота.
// 
// Параметры:
//  Токен - Строка - Токен
// 
// Возвращаемое значение:
//  ДвоичныеДанные, Неопределено, Произвольный -  Ответ сервера Telegram
Функция ПолучитьИнформациюБота(Знач Токен) Экспорт

    URL   = "api.telegram.org/bot" + Токен + "/getMe";
	Ответ = OPI_Инструменты.Get(URL);
    
	Возврат Ответ;

КонецФункции

// Получить обновления.
// 
// Параметры:
//  Токен - Строка - Токен
// 
// Возвращаемое значение:
//  ДвоичныеДанные, Неопределено, Произвольный -  Ответ сервера Telegram
Функция ПолучитьОбновления(Знач Токен) Экспорт

    URL   = "api.telegram.org/bot" + Токен + "/getUpdates";
	Ответ = OPI_Инструменты.Get(URL);
	Возврат Ответ;

КонецФункции

// Установить Webhook.
// 
// Параметры:
//  Токен - Строка - Токен
//  URL - Строка - Адрес обработки запросов от Telegram (с https://)
// 
// Возвращаемое значение:
//  ДвоичныеДанные, Неопределено, Произвольный -  Ответ сервера Telegram
Функция УстановитьWebhook(Знач Токен, Знач URL) Экспорт

	Параметры_ = Новый Структура;
	Параметры_.Вставить("url", URL);

    URL   = "api.telegram.org/bot" + Токен + "/setWebHook";
	Ответ = OPI_Инструменты.Get(URL, Параметры_);
    
	Возврат Ответ;

КонецФункции

// Удалить Webhook.
// 
// Параметры:
//  Токен - Строка - Токен
// 
// Возвращаемое значение:
//  ДвоичныеДанные, Неопределено, Произвольный -  Ответ сервера Telegram
Функция УдалитьWebhook(Знач Токен) Экспорт

    URL   = "api.telegram.org/bot" + Токен + "/deleteWebHook";
	Ответ = OPI_Инструменты.Get(URL);
	Возврат Ответ;

КонецФункции

#КонецОбласти

#Область ОтправкаДанных

// Отправить текстовое сообщение.
// 
// Параметры:
//  Токен - Строка - Токен
//  IDЧата - Строка,Число - ID целевого чата
//  Текст - Строка - Текст сообщения
//  Клавиатура - Строка -  См. СформироватьКлавиатуруПоМассивуКнопок
// 
// Возвращаемое значение:
//  ДвоичныеДанные, Неопределено, Произвольный -  Ответ сервера Telegram
Функция ОтправитьТекстовоеСообщение(Знач Токен, Знач IDЧата, Знач Текст, Знач Клавиатура = "") Экспорт

	OPI_Инструменты.ЗаменитьСпецСимволы(Текст);
            
	Параметры_ = Новый Структура;
	Параметры_.Вставить("parse_mode"  , "Markdown");
	Параметры_.Вставить("text"        , Текст);
	Параметры_.Вставить("reply_markup", Клавиатура);
    
    ДобавитьИдентификаторЧата(IDЧата, Параметры_);
    
    URL   = "api.telegram.org/bot" + Токен + "/sendMessage";
	Ответ = OPI_Инструменты.Get(URL, Параметры_);

	Возврат Ответ;

КонецФункции

// Отправить картинку.
// 
// Параметры:
//  Токен - Строка - Токен
//  IDЧата - Строка,Число - IDЧата
//  Текст - Строка - Текст
//  Картинка - ДвоичныеДанные,Строка - Двоичные данные или путь к картинке
//  Клавиатура - Строка -  См. СформироватьКлавиатуруПоМассивуКнопок
// 
// Возвращаемое значение:
//  Строка, Произвольный, HTTPОтвет -  Ответ сервера Telegram
Функция ОтправитьКартинку(Знач Токен, Знач IDЧата, Знач Текст, Знач Картинка, Знач Клавиатура = "") Экспорт

	Возврат ОтправитьФайл(Токен, IDЧата, Текст, Картинка, "photo", Клавиатура);

КонецФункции

// Отправить видео.
// 
// Параметры:
//  Токен - Строка - Токен
//  IDЧата - Строка,Число - ID целевого чата
//  Текст - Строка - Текст
//  Видео - ДвоичныеДанные,Строка - Двоичные данные или путь к видео
//  Клавиатура - Строка -  См. СформироватьКлавиатуруПоМассивуКнопок
// 
// Возвращаемое значение:
//  Строка, Произвольный, HTTPОтвет -  Ответ сервера Telegram
Функция ОтправитьВидео(Знач Токен, Знач IDЧата, Знач Текст, Знач Видео, Знач Клавиатура = "") Экспорт

	Возврат ОтправитьФайл(Токен, IDЧата, Текст, Видео, "video", Клавиатура);

КонецФункции

// Отправить аудио.
// 
// Параметры:
//  Токен - Строка - Токен
//  IDЧата - Строка,Число - ID целевого чата
//  Текст - Строка - Текст
//  Аудио - ДвоичныеДанные,Строка - Двоичные данные или путь к аудио
//  Клавиатура - Строка -  См. СформироватьКлавиатуруПоМассивуКнопок
// 
// Возвращаемое значение:
//  Строка, Произвольный, HTTPОтвет -  Ответ сервера Telegram
Функция ОтправитьАудио(Знач Токен, Знач IDЧата, Знач Текст, Знач Аудио, Знач Клавиатура = "") Экспорт

	Возврат ОтправитьФайл(Токен, IDЧата, Текст, Аудио, "audio", Клавиатура);

КонецФункции

// Отправить документ.
// 
// Параметры:
//  Токен - Строка - Токен
//  IDЧата - Строка,Число - ID целевого чата
//  Текст - Строка - Текст
//  Документ - ДвоичныеДанные,Строка - Двоичные данные или путь к документу
//  Клавиатура - Строка -  См. СформироватьКлавиатуруПоМассивуКнопок
// 
// Возвращаемое значение:
//  Строка, Произвольный, HTTPОтвет -  Ответ сервера Telegram
Функция ОтправитьДокумент(Знач Токен, Знач IDЧата, Знач Текст, Знач Документ, Знач Клавиатура = "") Экспорт

	Возврат ОтправитьФайл(Токен, IDЧата, Текст, Документ, "document", Клавиатура);

КонецФункции

// Отправить гифку.
// 
// Параметры:
//  Токен - Строка - Токен
//  IDЧата - Строка,Число - ID целевого чата
//  Текст - Строка - Текст
//  Гифка - ДвоичныеДанные,Строка - Двоичные данные или путь к гифке
//  Клавиатура - Строка -  См. СформироватьКлавиатуруПоМассивуКнопок
// 
// Возвращаемое значение:
//  Строка, Произвольный, HTTPОтвет -  Ответ сервера Telegram
Функция ОтправитьГифку(Знач Токен, Знач IDЧата, Знач Текст, Знач Гифка, Знач Клавиатура = "") Экспорт

	Возврат ОтправитьФайл(Токен, IDЧата, Текст, Гифка, "animation", Клавиатура);

КонецФункции

// Отправить набор любых файлов.
// 
// Параметры:
//  Токен - Строка - Токен
//  IDЧата - Строка,Число - ID целевого чата
//  Текст - Строка - Текст
//  СоответствиеФайлов - Соответствие из Строка,ДвоичныеДанные - Коллекция файлов:
//    * Ключ - ДвоичныеДанные,Строка - Файл 
//  * Значение - Строка - Тип файла: audio, document, photo, video
//  Клавиатура - Строка -  См. СформироватьКлавиатуруПоМассивуКнопок
// 
// Возвращаемое значение:
//  Произвольный, HTTPОтвет -  Ответ сервера Telegram
// BSLLS:Typo-off
Функция ОтправитьМедиагруппу(Знач Токен, Знач IDЧата, Знач Текст, Знач СоответствиеФайлов, Знач Клавиатура = "") Экспорт
    
    // СоответствиеФайлов
    // Ключ - Файл, Значение - Тип
    // Типы: audio, document, photo, video
    // Нельзя замешивать разные типы!

	OPI_Инструменты.ЗаменитьСпецсимволы(Текст);

    URL             = "api.telegram.org/bot" + Токен + "/sendMediaGroup";
	IDЧата          = OPI_Инструменты.ЧислоВСтроку(IDЧата);
    СтруктураФайлов = Новый Структура;
    Медиа           = Новый Массив;

	Параметры_ = Новый Структура;
	Параметры_.Вставить("parse_mode"  , "Markdown");
	Параметры_.Вставить("caption"     , Текст);
	Параметры_.Вставить("reply_markup", Клавиатура);
    
    ДобавитьИдентификаторЧата(IDЧата, Параметры_);
    СформироватьМассивМедиа(СоответствиеФайлов, Текст, СтруктураФайлов, Медиа);
    
	Параметры_.Вставить("media", Медиа);

	Ответ = OPI_Инструменты.PostMultipart(URL, Параметры_, СтруктураФайлов, "mixed");

	Возврат Ответ;

КонецФункции

// Отправить местоположение.
// 
// Параметры:
//  Токен - Строка - Токен
//  IDЧата - Строка,Число - ID целевого чата
//  Широта - Строка,Число - Географическая широта
//  Долгота - Строка,Число - Географическая долгота
//  Клавиатура - Строка -  См. СформироватьКлавиатуруПоМассивуКнопок
// 
// Возвращаемое значение:
//  ДвоичныеДанные, Неопределено, Произвольный -  Ответ сервера Telegram
Функция ОтправитьМестоположение(Знач Токен, Знач IDЧата, Знач Широта, Знач Долгота, Знач Клавиатура = "") Экспорт

	IDЧата = OPI_Инструменты.ЧислоВСтроку(IDЧата);
    URL    = "api.telegram.org/bot" + Токен + "/sendLocation";
    
	Параметры_ = Новый Структура;
	Параметры_.Вставить("parse_mode"  , "Markdown");
	Параметры_.Вставить("latitude"    , OPI_Инструменты.ЧислоВСтроку(Широта));
	Параметры_.Вставить("longitude"   , OPI_Инструменты.ЧислоВСтроку(Долгота));
	Параметры_.Вставить("reply_markup", Клавиатура);
    
    ДобавитьИдентификаторЧата(IDЧата, Параметры_);

	Ответ = OPI_Инструменты.Get(URL, Параметры_);

	Возврат Ответ;

КонецФункции

// Отправить контакт.
// 
// Параметры:
//  Токен - Строка - Токен
//  IDЧата - Строка,Число - ID целевого чата
//  Имя - Строка - Имя контакта
//  Фамилия - Строка - Фамилия контакта
//  Телефон - Строка - Телефон контакта
//  Клавиатура - Строка -  См. СформироватьКлавиатуруПоМассивуКнопок
// 
// Возвращаемое значение:
//  ДвоичныеДанные, Неопределено, Произвольный -  Ответ сервера Telegram
Функция ОтправитьКонтакт(Знач Токен, Знач IDЧата, Знач Имя, Знач Фамилия, Знач Телефон, Знач Клавиатура = "") Экспорт

	IDЧата = OPI_Инструменты.ЧислоВСтроку(IDЧата);
    URL    = "api.telegram.org/bot" + Токен + "/sendContact";

	Параметры_ = Новый Структура;
	Параметры_.Вставить("parse_mode"  , "Markdown");
	Параметры_.Вставить("first_name"  , Имя);
	Параметры_.Вставить("last_name"   , Фамилия);
	Параметры_.Вставить("phone_number", Строка(Телефон));
	Параметры_.Вставить("reply_markup", Клавиатура);
    
    ДобавитьИдентификаторЧата(IDЧата, Параметры_);

	Ответ = OPI_Инструменты.Get(URL, Параметры_);

	Возврат Ответ;

КонецФункции

// Отправить опрос.
// 
// Параметры:
//  Токен - Строка - Токен
//  IDЧата - Строка,Число - ID целевого чата
//  Вопрос - Строка - Вопрос опроса
//  МассивОтветов - Массив из строка - Массив вариантов ответа
//  Анонимный - Булево -  Анонимность опроса
// 
// Возвращаемое значение:
//  ДвоичныеДанные, Неопределено, Произвольный -  Ответ сервера Telegram
Функция ОтправитьОпрос(Знач Токен, Знач IDЧата, Знач Вопрос, Знач МассивОтветов, Знач Анонимный = Истина) Экспорт

	IDЧата = OPI_Инструменты.ЧислоВСтроку(IDЧата);
	Ответы = OPI_Инструменты.JSONСтрокой(МассивОтветов);
    URL    = "api.telegram.org/bot" + Токен + "/sendPoll";

	Параметры_ = Новый Структура;
	Параметры_.Вставить("parse_mode", "Markdown");
	Параметры_.Вставить("question"  , Вопрос);
	Параметры_.Вставить("options"   , Ответы);

	Если Не Анонимный Тогда
		Параметры_.Вставить("is_anonymous", Ложь);
    КонецЕсли;
    
    ДобавитьИдентификаторЧата(IDЧата, Параметры_);

	Ответ = OPI_Инструменты.Get(URL, Параметры_);

	Возврат Ответ;

КонецФункции

// Переслать сообщение.
// 
// Параметры:
//  Токен - Строка - Токен
//  IDОригинала - Строка,Число - ID оригинального сообщения
//  ОткудаID - Строка,Число - ID чата оригинального сообщения
//  КудаID - Строка,Число - ID целевого чата
// 
// Возвращаемое значение:
//  ДвоичныеДанные, Неопределено, Произвольный -  Ответ сервера Telegram
Функция ПереслатьСообщение(Знач Токен, Знач IDОригинала, Знач ОткудаID, Знач КудаID) Экспорт

    URL             = "api.telegram.org/bot" + Токен + "/forwardMessage";
	IDОригинала     = OPI_Инструменты.ЧислоВСтроку(IDОригинала);
	ОткудаID        = OPI_Инструменты.ЧислоВСтроку(ОткудаID);
	КудаID          = OPI_Инструменты.ЧислоВСтроку(КудаID);

	Параметры_ = Новый Структура;
	Параметры_.Вставить("from_chat_id", ОткудаID);
	Параметры_.Вставить("message_id"  , IDОригинала);

    ДобавитьИдентификаторЧата(КудаID, Параметры_);
    
	Ответ = OPI_Инструменты.Get(URL, Параметры_);

	Возврат Ответ;

КонецФункции

#КонецОбласти

#Область Администрирование

// Бан.
// 
// Параметры:
//  Токен - Строка - Токен
//  IDЧата - Строка,Число - ID целевого чата
//  IDПользователя - Строка,Число - ID целевого пользователя
// 
// Возвращаемое значение:
//  ДвоичныеДанные, Неопределено, Произвольный -  Ответ сервера Telegram
Функция Бан(Знач Токен, Знач IDЧата, Знач IDПользователя) Экспорт

    URL             = "api.telegram.org/bot" + Токен + "/banChatMember";
	IDЧата          = OPI_Инструменты.ЧислоВСтроку(IDЧата);
	IDПользователя  = OPI_Инструменты.ЧислоВСтроку(IDПользователя);

	Параметры_ = Новый Структура;
	Параметры_.Вставить("parse_mode", "Markdown");
	Параметры_.Вставить("chat_id"   , IDЧата);
	Параметры_.Вставить("user_id"   , IDПользователя);

	Ответ = OPI_Инструменты.Get(URL, Параметры_);

	Возврат Ответ;

КонецФункции

// Разбан.
// 
// Параметры:
//  Токен - Строка - Токен
//  IDЧата - Строка,Число - ID целевого чата
//  IDПользователя - Строка,Число - ID целевого пользователя
// 
// Возвращаемое значение:
//  ДвоичныеДанные, Неопределено, Произвольный -  Ответ сервера Telegram
Функция Разбан(Знач Токен, Знач IDЧата, Знач IDПользователя) Экспорт

    URL             = "api.telegram.org/bot" + Токен + "/unbanChatMember";
	IDЧата          = OPI_Инструменты.ЧислоВСтроку(IDЧата);
	IDПользователя  = OPI_Инструменты.ЧислоВСтроку(IDПользователя);

	Параметры_ = Новый Структура;
	Параметры_.Вставить("parse_mode"    , "Markdown");
	Параметры_.Вставить("chat_id"       , IDЧата);
	Параметры_.Вставить("user_id"       , IDПользователя);
	Параметры_.Вставить("only_if_banned", Истина);

	Ответ = OPI_Инструменты.Get(URL, Параметры_);

	Возврат Ответ;

КонецФункции

// Создать ссылку приглашение.
// 
// Параметры:
//  Токен - Строка - Токен
//  IDЧата - Строка,Число - ID целевого чата
//  Заголовок - Строка -  Заголовок приглашения
//  ДатаИстечения - Дата -  Дата окончания жизни ссылки (безсрочно, если не указано)
//  ЛимитПользователей - Число -  Лимит пользователей (бесконечно, если не указано)
// 
// Возвращаемое значение:
//  ДвоичныеДанные, Неопределено, Произвольный -  Ответ сервера Telegram
Функция СоздатьСсылкуПриглашение(Знач Токен
    , Знач IDЧата
    , Знач Заголовок = ""
    , Знач ДатаИстечения = ""
    , Знач ЛимитПользователей = 0) Экспорт

    URL     = "api.telegram.org/bot" + Токен + "/createChatInviteLink";
	IDЧата  = OPI_Инструменты.ЧислоВСтроку(IDЧата);

	Параметры_ = Новый Структура;
	Параметры_.Вставить("parse_mode", "Markdown");
	Параметры_.Вставить("chat_id"   , IDЧата);
	Параметры_.Вставить("name"      , Заголовок);

    Если ЗначениеЗаполнено(ДатаИстечения) Тогда
        ДатаИстечения = OPI_Инструменты.UNIXTime(ДатаИстечения);
		Параметры_.Вставить("expire_date", ДатаИстечения);
	КонецЕсли;

	Параметры_.Вставить("member_limit", ЛимитПользователей);

	Ответ = OPI_Инструменты.Get(URL, Параметры_);

	Возврат Ответ;

КонецФункции

// Закрепить сообщение.
// 
// Параметры:
//  Токен - Строка - Токен
//  IDЧата - Строка,Число - ID целевого чата
//  IDСообщения - Строка,Число - ID целевого сообщения
// 
// Возвращаемое значение:
//  ДвоичныеДанные, Неопределено, Произвольный -  Ответ сервера Telegram
Функция ЗакрепитьСообщение(Знач Токен, Знач IDЧата, Знач IDСообщения) Экспорт

    URL             = "api.telegram.org/bot" + Токен + "/pinChatMessage";
	IDЧата          = OPI_Инструменты.ЧислоВСтроку(IDЧата);
	IDСообщения     = OPI_Инструменты.ЧислоВСтроку(IDСообщения);

	Параметры_ = Новый Структура;
	Параметры_.Вставить("parse_mode"          , "Markdown");
	Параметры_.Вставить("chat_id"             , IDЧата);
	Параметры_.Вставить("message_id"          , IDСообщения);
	Параметры_.Вставить("disable_notification", Истина);

	Ответ = OPI_Инструменты.Get(URL, Параметры_);

	Возврат Ответ;

КонецФункции

// Открепить сообщение.
// 
// Параметры:
//  Токен - Строка - Токен
//  IDЧата - Строка - ID целевого чата
//  IDСообщения - Строка,Число - ID целевого сообщения
// 
// Возвращаемое значение:
//  ДвоичныеДанные, Неопределено, Произвольный -  Ответ сервера Telegram
Функция ОткрепитьСообщение(Знач Токен, Знач IDЧата, Знач IDСообщения) Экспорт

    URL             = "api.telegram.org/bot" + Токен + "/unpinChatMessage";
	IDЧата          = OPI_Инструменты.ЧислоВСтроку(IDЧата);
	IDСообщения     = OPI_Инструменты.ЧислоВСтроку(IDСообщения);

	Параметры_ = Новый Структура;
	Параметры_.Вставить("parse_mode", "Markdown");
	Параметры_.Вставить("chat_id"   , IDЧата);
	Параметры_.Вставить("message_id", IDСообщения);

	Ответ = OPI_Инструменты.Get(URL, Параметры_);

	Возврат Ответ;

КонецФункции

// Получить число участников.
// 
// Параметры:
//  Токен - Строка - Токен
//  IDЧата - Строка,Число - ID целевого чата
// 
// Возвращаемое значение:
//  ДвоичныеДанные, Неопределено, Произвольный -  Получить число участников
Функция ПолучитьЧислоУчастников(Знач Токен, Знач IDЧата) Экспорт

    URL     = "api.telegram.org/bot" + Токен + "/getChatMemberCount";
	IDЧата  = OPI_Инструменты.ЧислоВСтроку(IDЧата);

	Параметры_ = Новый Структура;
	Параметры_.Вставить("parse_mode", "Markdown");
	Параметры_.Вставить("chat_id"   , IDЧата);

	Ответ = OPI_Инструменты.Get(URL, Параметры_);

	Возврат Ответ;

КонецФункции

#КонецОбласти

#Область TelegramMiniApp

// Обработать данные TMA и определить их достоверность
// 
// Параметры:
//  СтрокаДанных - Строка - querry из Telegram.WebApp.initData
//  Токен - Строка - Токен бота
// 
// Возвращаемое значение:
//  Соответствие из Строка -  Обработанные данные с признаком достоверности
Функция ОбработатьДанныеTMA(Знач СтрокаДанных, Знач Токен) Экспорт

	СтрокаДанных    = РаскодироватьСтроку(СтрокаДанных, СпособКодированияСтроки.КодировкаURL);
	СтруктураДанных = OPI_Инструменты.ПараметрыЗапросаВСоответствие(СтрокаДанных);
	Ключ            = "WebAppData";
	Хэш             = "";

	Результат = OPI_Криптография.HMACSHA256(ПолучитьДвоичныеДанныеИзСтроки(Ключ), ПолучитьДвоичныеДанныеИзСтроки(Токен));

	ТЗнач = Новый ТаблицаЗначений;
	ТЗнач.Колонки.Добавить("Ключ");
	ТЗнач.Колонки.Добавить("Значение");

	Для Каждого Данные Из СтруктураДанных Цикл

		НоваяСтрока             = ТЗнач.Добавить();
		НоваяСтрока.Ключ        = Данные.Ключ;
		НоваяСтрока.Значение    = Данные.Значение;

	КонецЦикла;

	ТЗнач.Сортировать("Ключ");

	СоответствиеВозврата = Новый Соответствие;
	DCS                  = "";

	Для Каждого СтрокаТЗ Из ТЗнач Цикл

		Если СтрокаТЗ.Ключ <> "hash" Тогда
			DCS = DCS + СтрокаТЗ.Ключ + "=" + СтрокаТЗ.Значение + Символы.ПС;
			СоответствиеВозврата.Вставить(СтрокаТЗ.Ключ, СтрокаТЗ.Значение);
		Иначе
			Хэш = СтрокаТЗ.Значение;
		КонецЕсли;

	КонецЦикла;

	DCS     = Лев(DCS, СтрДлина(DCS) - 1);
	Подпись = OPI_Криптография.HMACSHA256(Результат, ПолучитьДвоичныеДанныеИзСтроки(DCS));

	Финал = ПолучитьHexСтрокуИзДвоичныхДанных(Подпись);

	Если Финал = вРег(Хэш) Тогда
		Ответ = Истина;
	Иначе
		Ответ = Ложь;
	КонецЕсли;

	СоответствиеВозврата.Вставить("passed", Ответ);

	Возврат СоответствиеВозврата;

КонецФункции

#КонецОбласти

#Область РежимФорума

// Получить список иконок аватаров.
// 
// Параметры:
//  Токен - Строка - Токен
// 
// Возвращаемое значение:
//  Соответствие Из КлючИЗначение - Список иконок аватаров
Функция ПолучитьСписокИконокАватаров(Знач Токен) Экспорт
    
    Result    = "result";
    URL       = "api.telegram.org/bot" + Токен + "/getForumTopicIconStickers";
    Ответ     = OPI_Инструменты.Get(URL);
    Иконки    = Ответ[Result];
    Коллекция = Новый Соответствие;
    
    Для Каждого Иконка Из Иконки Цикл
        Коллекция.Вставить(Иконка["custom_emoji_id"], Иконка["emoji"]);
    КонецЦикла;
       
    Возврат Коллекция;

КонецФункции

// Создать тему форума.
// 
// Параметры:
//  Токен - Строка - Токен
//  IDЧата - Строка,Число - ID чата создания темы
//  Заголовок - Строка - Заголовок темы
//  IDИконки - Строка - См.ПолучитьСписокИконокАватаров
// 
// Возвращаемое значение:
//  HTTPОтвет - Ответ сервера Telegram
Функция СоздатьТемуФорума(Знач Токен, Знач IDЧата, Знач Заголовок, Знач IDИконки = "") Экспорт
    Возврат УправлениеТемойФорума(Токен, IDЧата, Заголовок, IDИконки);
КонецФункции

// Изменить тему форума.
// 
// Параметры:
//  Токен - Строка - Токен
//  IDЧата - Строка,Число - ID чата темы
//  IDТемы - Строка,Число - ID темы
//  Заголовок - Строка - Новый заголовок
//  IDИконки - Строка - См.ПолучитьСписокИконокАватаров
// 
// Возвращаемое значение:
//  HTTPОтвет - Ответ сервера Telegram
Функция ИзменитьТемуФорума(Знач Токен
    , Знач IDЧата
    , Знач IDТемы
    , Знач Заголовок = Неопределено
    , Знач IDИконки = Неопределено) Экспорт   
     
    Возврат УправлениеТемойФорума(Токен, IDЧата, Заголовок, IDИконки, IDТемы);
КонецФункции

// Закрыть тему форума.
// 
// Параметры:
//  Токен - Строка - Токен
//  IDЧата - Строка,Число - ID чата темы
//  IDТемы - Строка,Число - ID темы
// 
// Возвращаемое значение:
//  Неопределено, HTTPОтвет - Ответ сервера Telegram
Функция ЗакрытьТемуФорума(Знач Токен, Знач IDЧата, Знач IDТемы = "") Экспорт
    Возврат УправлениеСостояниемТемыФорума(Токен, IDЧата, 2, IDТемы);    
КонецФункции

// Открыть тему форума.
// 
// Параметры:
//  Токен - Строка - Токен
//  IDЧата - Строка,Число - ID чата темы
//  IDТемы - Строка,Число - ID темы
// 
// Возвращаемое значение:
//  Неопределено, HTTPОтвет - Ответ сервера Telegram
Функция ОткрытьТемуФорума(Знач Токен, Знач IDЧата, Знач IDТемы = "") Экспорт
    Возврат УправлениеСостояниемТемыФорума(Токен, IDЧата, 1, IDТемы);    
КонецФункции

// Удалить тему форума.
// 
// Параметры:
//  Токен - Строка - Токен
//  IDЧата - Строка,Число - ID чата темы
//  IDТемы - Строка,Число - ID темы
// 
// Возвращаемое значение:
//  Неопределено, HTTPОтвет - Ответ сервера Telegram
Функция УдалитьТемуФорума(Знач Токен, Знач IDЧата, Знач IDТемы) Экспорт
    Возврат УправлениеСостояниемТемыФорума(Токен, IDЧата, 3, IDТемы);    
КонецФункции

// Скрыть главную тему форума.
// 
// Параметры:
//  Токен - Строка - Токен
//  IDЧата - Строка,Число - ID чата темы
// 
// Возвращаемое значение:
//  HTTPОтвет -  Ответ сервера Telegram
Функция СкрытьГлавнуюТемуФорума(Знач Токен, Знач IDЧата) Экспорт
    Возврат УправлениеВидимостьюГлавнойТемыФорума(Токен, IDЧата, Истина);
КонецФункции

// Показать главную тему форума.
// 
// Параметры:
//  Токен - Строка - Токен
//  IDЧата - Строка,Число - ID чата темы
// 
// Возвращаемое значение:
//  HTTPОтвет -  Ответ сервера Telegram
Функция ПоказатьГлавнуюТемуФорума(Знач Токен, Знач IDЧата) Экспорт
    Возврат УправлениеВидимостьюГлавнойТемыФорума(Токен, IDЧата, Ложь);
КонецФункции

// Изменить имя главной темы форума.
// 
// Параметры:
//  Токен - Строка - Токен
//  IDЧата - Строка,Число - ID Чата темы
//  Заголовок - Строка - Новый заголовок
// 
// Возвращаемое значение:
//  HTTPОтвет -  Ответ сервера Telegram
Функция ИзменитьИмяГлавнойТемыФорума(Знач Токен, Знач IDЧата, Знач Заголовок) Экспорт
    
    IDЧата    = OPI_Инструменты.ЧислоВСтроку(IDЧата);
    Параметры_ = Новый Структура;
    Параметры_.Вставить("chat_id", IDЧата);
    Параметры_.Вставить("name"   , Заголовок);
    
    URL   = "api.telegram.org/bot" + Токен + "/editGeneralForumTopic";
    Ответ = OPI_Инструменты.Get(URL, Параметры_);
    
    Возврат Ответ;

КонецФункции

// Очистить список закрепленных сообщений темы.
// 
// Параметры:
//  Токен - Строка - Токен
//  IDЧата - Строка,Число - ID чата темы
//  IDТемы - Строка -  ID темы. Главная, если не заполнено
// 
// Возвращаемое значение:
//  HTTPОтвет -  Очистить список закрепленных сообщений темы
Функция ОчиститьСписокЗакрепленныхСообщенийТемы(Знач Токен, Знач IDЧата, Знач IDТемы = "") Экспорт
    
    IDТемы     = OPI_Инструменты.ЧислоВСтроку(IDТемы);
    IDЧата     = OPI_Инструменты.ЧислоВСтроку(IDЧата);
    Параметры_ = Новый Структура;
    Параметры_.Вставить("chat_id", IDЧата);
    
    Если ЗначениеЗаполнено(IDТемы) Тогда
        Метод = "/unpinAllForumTopicMessages";
        Параметры_.Вставить("message_thread_id", IDТемы);
    Иначе
        Метод = "/unpinAllGeneralForumTopicMessages";
    КонецЕсли;
        
    URL   = "api.telegram.org/bot" + Токен + Метод;
    Ответ = OPI_Инструменты.Get(URL, Параметры_);
    
    Возврат Ответ;

КонецФункции

#КонецОбласти

#Область Прочее

// Сформировать клавиатуру по массиву кнопок.
// 
// Параметры:
//  МассивКнопок - Массив из Строка - Массив кнопок
//  ПодСообщением - Булево -  Клавиатура под сообщением или на нижней панели
//  ОднаПодОдной - Булево - Истина - кнопки выводятся в столбик, Ложь - в строку
// 
// Возвращаемое значение:
//  Строка -  JSON клавиатуры
Функция СформироватьКлавиатуруПоМассивуКнопок(Знач МассивКнопок
    , Знач ПодСообщением = Ложь
    , Знач ОднаПодОдной = Истина) Экспорт

	Если ОднаПодОдной Тогда
        Строки = СоздатьВысокуюКлавиатуру(МассивКнопок);
	Иначе
        Строки = СоздатьДлиннуюКлваиатуру(МассивКнопок);
	КонецЕсли;

	Если ПодСообщением Тогда
		СтруктураПараметра = Новый Структура("inline_keyboard,rows", Строки, 1);
	Иначе
		СтруктураПараметра = Новый Структура("keyboard,resize_keyboard", Строки, Истина);
	КонецЕсли;

	ЗаписьJSON    = Новый ЗаписьJSON;
	ПЗJSON        = Новый ПараметрыЗаписиJSON(ПереносСтрокJSON.Нет, , , ЭкранированиеСимволовJSON.СимволыВнеASCII);
	ЗаписьJSON.УстановитьСтроку(ПЗJSON);

	ЗаписатьJSON(ЗаписьJSON, СтруктураПараметра);

	Возврат ЗаписьJSON.Закрыть();

КонецФункции

#КонецОбласти

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

Функция ОтправитьФайл(Знач Токен, Знач IDЧата, Знач Текст, Знач Файл, Знач Вид, Знач Клавиатура)

    IDЧата      = OPI_Инструменты.ЧислоВСтроку(IDЧата);
	Расширение  = "";
    Метод       = "";
    
    ОпределитьМетодОтправки(Вид, Метод, Расширение);
	OPI_Инструменты.ЗаменитьСпецсимволы(Текст);

	Если Не ТипЗнч(Файл) = Тип("ДвоичныеДанные") Тогда
		ТекущийФайл = Новый Файл(Файл);
		Расширение  = ?(Вид = "document" Или Вид = "animation", ТекущийФайл.Расширение, "");
		Файл        = Новый ДвоичныеДанные(Файл);
	КонецЕсли;

	Расширение = СтрЗаменить(Расширение, ".", "___");

	Параметры_ = Новый Структура;
	Параметры_.Вставить("parse_mode"  , "Markdown");
	Параметры_.Вставить("caption"     , Текст);
	Параметры_.Вставить("reply_markup", Клавиатура);
    
    ДобавитьИдентификаторЧата(IDЧата, Параметры_);

	СтруктураФайлов = Новый Структура;
	СтруктураФайлов.Вставить(Вид + Расширение, Файл);

    URL   = "api.telegram.org/bot" + Токен + Метод;
	Ответ = OPI_Инструменты.PostMultipart(URL, Параметры_, СтруктураФайлов, "mixed");

	Возврат Ответ;

КонецФункции

Функция УправлениеТемойФорума(Знач Токен
    , Знач IDЧата
    , Знач Заголовок = Неопределено
    , Знач IDИконки = Неопределено
    , Знач IDТемы = "")
    
    IDТемы = OPI_Инструменты.ЧислоВСтроку(IDТемы);
    IDЧата = OPI_Инструменты.ЧислоВСтроку(IDЧата);
    
    Параметры_ = Новый Структура;
    Параметры_.Вставить("name"                , Заголовок);
    Параметры_.Вставить("chat_id"             , IDЧата);
    Параметры_.Вставить("icon_custom_emoji_id", IDИконки);
    
    Если ЗначениеЗаполнено(IDТемы) Тогда
        Метод  = "/editForumTopic";
        Параметры_.Вставить("message_thread_id", IDТемы);     
    Иначе    
        Метод = "/createForumTopic";    
    КонецЕсли;
    
    OPI_Инструменты.УдалитьПустыеПоляКоллекции(Параметры_);       
    Ответ = OPI_Инструменты.Get("api.telegram.org/bot" + Токен + Метод, Параметры_);
    
    Возврат Ответ;

КонецФункции

Функция УправлениеСостояниемТемыФорума(Знач Токен, Знач IDЧата, Знач Статус, Знач IDТемы = "") 
        
    Если ЗначениеЗаполнено(IDТемы) Тогда
        Форум = "Forum";
    Иначе
        Форум = "GeneralForum";
    КонецЕсли;
    
    IDТемы     = OPI_Инструменты.ЧислоВСтроку(IDТемы);
    IDЧата     = OPI_Инструменты.ЧислоВСтроку(IDЧата);
    Метод      = ОпределитьМетодУправленияФорумом(Статус, Форум);
    Параметры_ = Новый Структура;
    Параметры_.Вставить("chat_id", IDЧата);
    
    Если ЗначениеЗаполнено(IDТемы) Тогда
        Параметры_.Вставить("message_thread_id", IDТемы);
    КонецЕсли;
    
    URL   = "api.telegram.org/bot" + Токен + Метод;
    Ответ = OPI_Инструменты.Get(URL, Параметры_);

    Возврат Ответ;
    
КонецФункции

Функция УправлениеВидимостьюГлавнойТемыФорума(Знач Токен, Знач IDЧата, Знач Скрыть)
    
    IDЧата = OPI_Инструменты.ЧислоВСтроку(IDЧата);

    Если Скрыть Тогда
        Метод = "/hideGeneralForumTopic";
    Иначе
        Метод = "/unhideGeneralForumTopic";
    КонецЕсли;
    
    Параметры_ = Новый Структура;
    Параметры_.Вставить("chat_id", IDЧата);
    
    URL   = "api.telegram.org/bot" + Токен + Метод;
    Ответ = OPI_Инструменты.Get(URL, Параметры_);
    
    Возврат Ответ;

КонецФункции                 

Функция ОпределитьМетодУправленияФорумом(Знач Статус, Знач Форум) 
    
    Открыть = 1;
    Закрыть = 2;
    Удалить = 3;
    
    Если Статус = Открыть Тогда 
        Метод = "/reopen" + Форум + "Topic";
    ИначеЕсли Статус = Закрыть Тогда
        Метод = "/close" + Форум + "Topic";
    ИначеЕсли Статус = Удалить Тогда
        Метод = "/deleteForumTopic";
    Иначе 
        ВызватьИсключение "Некорректный статус управления форумом";
    КонецЕсли;
    
    Возврат Метод;

КонецФункции

Функция СоздатьВысокуюКлавиатуру(Знач МассивКнопок)
    
    Строки = Новый Массив;
    
    Для Каждого Кнопка Из МассивКнопок Цикл
        Кнопки = Новый Массив;
        Кнопка = OPI_Инструменты.ЧислоВСтроку(Кнопка);
        Кнопки.Добавить(Новый Структура("text,callback_data", Кнопка, Кнопка));
        Строки.Добавить(Кнопки);
    КонецЦикла;

    Возврат Строки;
    
КонецФункции

Функция СоздатьДлиннуюКлваиатуру(Знач МассивКнопок)
    
    Строки = Новый Массив;
    Кнопки = Новый Массив;
    
    Для Каждого Кнопка Из МассивКнопок Цикл
        Кнопка = OPI_Инструменты.ЧислоВСтроку(Кнопка);
        Кнопки.Добавить(Новый Структура("text,callback_data", Кнопка, Кнопка));
    КонецЦикла;
    
    Строки.Добавить(Кнопки);
    
    Возврат Строки;

КонецФункции

Процедура СформироватьМассивМедиа(Знач СоответствиеФайлов, Знач Текст, СтруктураФайлов, Медиа)
    
	Счетчик = 0;
   
    Для Каждого ТекущийФайл Из СоответствиеФайлов Цикл
        
        Если Не ТипЗнч(ТекущийФайл.Ключ) = Тип("ДвоичныеДанные") Тогда
            ДД              = Новый ДвоичныеДанные(ТекущийФайл.Ключ);
            ЭтотФайл        = Новый Файл(ТекущийФайл.Ключ);
            ИмяМедиа        = ТекущийФайл.Значение + Строка(Счетчик) + ?(ТекущийФайл.Значение = "document",
            ЭтотФайл.Расширение, "");
            ПолноеИмяМедиа  = СтрЗаменить(ИмяМедиа, ".", "___");
        Иначе
            ДД              = ТекущийФайл.Ключ;
            ИмяМедиа        = ТекущийФайл.Значение + Строка(Счетчик);
            ПолноеИмяМедиа  = ИмяМедиа;
        КонецЕсли;
        
        СтруктураФайлов.Вставить(ПолноеИмяМедиа, ДД);
        
        СтруктураМедиа = Новый Структура;
        СтруктураМедиа.Вставить("type", ТекущийФайл.Значение);
        СтруктураМедиа.Вставить("media", "attach://" + ИмяМедиа);
        
        Если Счетчик = 0 Тогда
            СтруктураМедиа.Вставить("caption", Текст);
        КонецЕсли;
        
        Медиа.Добавить(СтруктураМедиа);
        
        Счетчик = Счетчик + 1;
        
    КонецЦикла;

    Медиа = OPI_Инструменты.JSONСтрокой(Медиа);
    
КонецПроцедуры

Процедура ДобавитьИдентификаторЧата(Знач IDЧата, Параметры)
    
    IDЧата     = OPI_Инструменты.ЧислоВСтроку(IDЧата);
    МассивЧата = СтрРазделить(IDЧата, "*", Ложь);
    
    Если МассивЧата.Количество() > 1 Тогда
        
        IDЧата = МассивЧата[0];
        IDТемы = МассивЧата[1];
        
        Параметры.Вставить("message_thread_id", IDТемы);
        
    КонецЕсли;
    
    Параметры.Вставить("chat_id", IDЧата);

КонецПроцедуры

Процедура ОпределитьМетодОтправки(Знач Вид, Метод, Расширение)
    
    Если Вид = "photo" Тогда
        Метод = "/sendPhoto";
    ИначеЕсли Вид = "video" Тогда
        Метод = "/sendVideo";
    ИначеЕсли Вид = "audio" Тогда
        Метод = "/sendAudio";
    ИначеЕсли Вид = "document" Тогда
        Метод = "/sendDocument";
    ИначеЕсли Вид = "animation" Тогда
        Метод = "/sendAnimation";
        Расширение 	= ".gif";
    Иначе
        ВызватьИсключение "Некорректный вид отправки";
    КонецЕсли;

КонецПроцедуры

#КонецОбласти

// BSLLS:Typo-on