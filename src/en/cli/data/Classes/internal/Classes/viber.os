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
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SetWebhook";
    НоваяСтрока.МетодПоиска = "SETWEBHOOK";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Viber Token";
    НоваяСтрока.Область     = "Settings and information";
    НоваяСтрока.ОписаниеМетода   = "IMPORTANT: Setting up Webhook is mandatory according to Viber rules. You need to have a free URL for this.,
    |    which will return 200 and a genuine SSL certificate. If there is a certificate and the database is published
    |    on the server - you can use an HTTP service. Information about new messages will also be sent there
    |    Viber periodically knocks on the Webhook address, so if it is inactive, everything will stop working";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SetWebhook";
    НоваяСтрока.МетодПоиска = "SETWEBHOOK";
    НоваяСтрока.Параметр    = "--url";
    НоваяСтрока.Описание    = "URL for setting up Webhook";
    НоваяСтрока.Область     = "Settings and information";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "GetChannelInformation";
    НоваяСтрока.МетодПоиска = "GETCHANNELINFORMATION";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Settings and information";
    НоваяСтрока.ОписаниеМетода   = "Here you can get the channel's user IDs. Bot IDs need to be obtained from the Webhook arrivals
    |    The user ID from channel information is not suitable for sending messages through the bot - they are different";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "GetUserData";
    НоваяСтрока.МетодПоиска = "GETUSERDATA";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Settings and information";
    НоваяСтрока.ОписаниеМетода   = "Gets user information by ID";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "GetUserData";
    НоваяСтрока.МетодПоиска = "GETUSERDATA";
    НоваяСтрока.Параметр    = "--user";
    НоваяСтрока.Описание    = "Viber User ID";
    НоваяСтрока.Область     = "Settings and information";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "GetOnlineUsers";
    НоваяСтрока.МетодПоиска = "GETONLINEUSERS";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Viber Token";
    НоваяСтрока.Область     = "Settings and information";
    НоваяСтрока.ОписаниеМетода   = "Gets the status of a user or several users by ID";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "GetOnlineUsers";
    НоваяСтрока.МетодПоиска = "GETONLINEUSERS";
    НоваяСтрока.Параметр    = "--users";
    НоваяСтрока.Описание    = "Viber User(s) ID";
    НоваяСтрока.Область     = "Settings and information";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendTextMessage";
    НоваяСтрока.МетодПоиска = "SENDTEXTMESSAGE";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Message sending";
    НоваяСтрока.ОписаниеМетода   = "Sends a text message to a chat or channel";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendTextMessage";
    НоваяСтрока.МетодПоиска = "SENDTEXTMESSAGE";
    НоваяСтрока.Параметр    = "--text";
    НоваяСтрока.Описание    = "Message text";
    НоваяСтрока.Область     = "Message sending";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendTextMessage";
    НоваяСтрока.МетодПоиска = "SENDTEXTMESSAGE";
    НоваяСтрока.Параметр    = "--user";
    НоваяСтрока.Описание    = "User ID. For channel > administrator, for bot > recipient";
    НоваяСтрока.Область     = "Message sending";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendTextMessage";
    НоваяСтрока.МетодПоиска = "SENDTEXTMESSAGE";
    НоваяСтрока.Параметр    = "--ischannel";
    НоваяСтрока.Описание    = "Sending to channel or bot chat";
    НоваяСтрока.Область     = "Message sending";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendTextMessage";
    НоваяСтрока.МетодПоиска = "SENDTEXTMESSAGE";
    НоваяСтрока.Параметр    = "--keyboard";
    НоваяСтрока.Описание    = "See CreateKeyboardFromArrayButton (необяз. по ум. - Пустое значение)";
    НоваяСтрока.Область     = "Message sending";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendImage";
    НоваяСтрока.МетодПоиска = "SENDIMAGE";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Message sending";
    НоваяСтрока.ОписаниеМетода   = "Sends an image to a chat or channel";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendImage";
    НоваяСтрока.МетодПоиска = "SENDIMAGE";
    НоваяСтрока.Параметр    = "--picture";
    НоваяСтрока.Описание    = "Image URL";
    НоваяСтрока.Область     = "Message sending";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendImage";
    НоваяСтрока.МетодПоиска = "SENDIMAGE";
    НоваяСтрока.Параметр    = "--user";
    НоваяСтрока.Описание    = "User ID. For channel > administrator, for bot > recipient";
    НоваяСтрока.Область     = "Message sending";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendImage";
    НоваяСтрока.МетодПоиска = "SENDIMAGE";
    НоваяСтрока.Параметр    = "--ischannel";
    НоваяСтрока.Описание    = "Sending to channel or bot chat";
    НоваяСтрока.Область     = "Message sending";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendImage";
    НоваяСтрока.МетодПоиска = "SENDIMAGE";
    НоваяСтрока.Параметр    = "--description";
    НоваяСтрока.Описание    = "Image annotation (необяз. по ум. - Пустое значение)";
    НоваяСтрока.Область     = "Message sending";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendFile";
    НоваяСтрока.МетодПоиска = "SENDFILE";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Message sending";
    НоваяСтрока.ОписаниеМетода   = "Sends a file (document) to a chat or channel";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendFile";
    НоваяСтрока.МетодПоиска = "SENDFILE";
    НоваяСтрока.Параметр    = "--file";
    НоваяСтрока.Описание    = "File URL";
    НоваяСтрока.Область     = "Message sending";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendFile";
    НоваяСтрока.МетодПоиска = "SENDFILE";
    НоваяСтрока.Параметр    = "--user";
    НоваяСтрока.Описание    = "User ID. For channel > administrator, for bot > recipient";
    НоваяСтрока.Область     = "Message sending";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendFile";
    НоваяСтрока.МетодПоиска = "SENDFILE";
    НоваяСтрока.Параметр    = "--ischannel";
    НоваяСтрока.Описание    = "Sending to channel or bot chat";
    НоваяСтрока.Область     = "Message sending";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendFile";
    НоваяСтрока.МетодПоиска = "SENDFILE";
    НоваяСтрока.Параметр    = "--ext";
    НоваяСтрока.Описание    = "File extension";
    НоваяСтрока.Область     = "Message sending";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendFile";
    НоваяСтрока.МетодПоиска = "SENDFILE";
    НоваяСтрока.Параметр    = "--size";
    НоваяСтрока.Описание    = "File size. If not filled in > determined automatically by downloading the file (необяз. по ум. - Пустое значение)";
    НоваяСтрока.Область     = "Message sending";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendContact";
    НоваяСтрока.МетодПоиска = "SENDCONTACT";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Message sending";
    НоваяСтрока.ОписаниеМетода   = "Sends a contact with a phone number to a chat or channel";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendContact";
    НоваяСтрока.МетодПоиска = "SENDCONTACT";
    НоваяСтрока.Параметр    = "--name";
    НоваяСтрока.Описание    = "Contact name";
    НоваяСтрока.Область     = "Message sending";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendContact";
    НоваяСтрока.МетодПоиска = "SENDCONTACT";
    НоваяСтрока.Параметр    = "--phone";
    НоваяСтрока.Описание    = "Phone number";
    НоваяСтрока.Область     = "Message sending";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendContact";
    НоваяСтрока.МетодПоиска = "SENDCONTACT";
    НоваяСтрока.Параметр    = "--user";
    НоваяСтрока.Описание    = "User ID. For channel > administrator, for bot > recipient";
    НоваяСтрока.Область     = "Message sending";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendContact";
    НоваяСтрока.МетодПоиска = "SENDCONTACT";
    НоваяСтрока.Параметр    = "--ischannel";
    НоваяСтрока.Описание    = "Sending to channel or bot chat";
    НоваяСтрока.Область     = "Message sending";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendLocation";
    НоваяСтрока.МетодПоиска = "SENDLOCATION";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Message sending";
    НоваяСтрока.ОписаниеМетода   = "Sends geographic coordinates to a chat or channel";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendLocation";
    НоваяСтрока.МетодПоиска = "SENDLOCATION";
    НоваяСтрока.Параметр    = "--lat";
    НоваяСтрока.Описание    = "Geographic latitude";
    НоваяСтрока.Область     = "Message sending";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendLocation";
    НоваяСтрока.МетодПоиска = "SENDLOCATION";
    НоваяСтрока.Параметр    = "--long";
    НоваяСтрока.Описание    = "Geographic longitude";
    НоваяСтрока.Область     = "Message sending";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendLocation";
    НоваяСтрока.МетодПоиска = "SENDLOCATION";
    НоваяСтрока.Параметр    = "--user";
    НоваяСтрока.Описание    = "User ID. For channel > administrator, for bot > recipient";
    НоваяСтрока.Область     = "Message sending";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendLocation";
    НоваяСтрока.МетодПоиска = "SENDLOCATION";
    НоваяСтрока.Параметр    = "--ischannel";
    НоваяСтрока.Описание    = "Sending to channel or bot chat";
    НоваяСтрока.Область     = "Message sending";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendLink";
    НоваяСтрока.МетодПоиска = "SENDLINK";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Message sending";
    НоваяСтрока.ОписаниеМетода   = "Sends a URL with a preview to a chat or channel";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendLink";
    НоваяСтрока.МетодПоиска = "SENDLINK";
    НоваяСтрока.Параметр    = "--url";
    НоваяСтрока.Описание    = "SentLink";
    НоваяСтрока.Область     = "Message sending";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendLink";
    НоваяСтрока.МетодПоиска = "SENDLINK";
    НоваяСтрока.Параметр    = "--user";
    НоваяСтрока.Описание    = "User ID. For channel > administrator, for bot > recipient";
    НоваяСтрока.Область     = "Message sending";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "SendLink";
    НоваяСтрока.МетодПоиска = "SENDLINK";
    НоваяСтрока.Параметр    = "--ischannel";
    НоваяСтрока.Описание    = "Sending to channel or bot chat";
    НоваяСтрока.Область     = "Message sending";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "CreateKeyboardFromArrayButton";
    НоваяСтрока.МетодПоиска = "CREATEKEYBOARDFROMARRAYBUTTON";
    НоваяСтрока.Параметр    = "--buttons";
    НоваяСтрока.Описание    = "Array of buttons";
    НоваяСтрока.Область     = "Message sending";
    НоваяСтрока.ОписаниеМетода   = "Returns a keyboard structure for messages";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "viber";
    НоваяСтрока.Модуль      = "OPI_Viber";
    НоваяСтрока.Метод       = "CreateKeyboardFromArrayButton";
    НоваяСтрока.МетодПоиска = "CREATEKEYBOARDFROMARRAYBUTTON";
    НоваяСтрока.Параметр    = "--color";
    НоваяСтрока.Описание    = "HEX color of buttons with # at the beginning (необяз. по ум. - #2db9b9)";
    НоваяСтрока.Область     = "Message sending";

    Возврат ТаблицаСостава;
КонецФункции
