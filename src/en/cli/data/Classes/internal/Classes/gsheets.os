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
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "CreateBook";
    НоваяСтрока.МетодПоиска = "CREATEBOOK";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Book work";
    НоваяСтрока.ОписаниеМетода   = "Creates a new book";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "CreateBook";
    НоваяСтрока.МетодПоиска = "CREATEBOOK";
    НоваяСтрока.Параметр    = "--title";
    НоваяСтрока.Описание    = "Name";
    НоваяСтрока.Область     = "Book work";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "CreateBook";
    НоваяСтрока.МетодПоиска = "CREATEBOOK";
    НоваяСтрока.Параметр    = "--sheets";
    НоваяСтрока.Описание    = "Array of names to add new sheets to the book";
    НоваяСтрока.Область     = "Book work";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "GetBook";
    НоваяСтрока.МетодПоиска = "GETBOOK";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Book work";
    НоваяСтрока.ОписаниеМетода   = "Gets information about the book by ID";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "GetBook";
    НоваяСтрока.МетодПоиска = "GETBOOK";
    НоваяСтрока.Параметр    = "--spreadsheet";
    НоваяСтрока.Описание    = "BookIdentifier";
    НоваяСтрока.Область     = "Book work";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "EditBookTitle";
    НоваяСтрока.МетодПоиска = "EDITBOOKTITLE";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Book work";
    НоваяСтрока.ОписаниеМетода   = "Changes the name of the existing book";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "EditBookTitle";
    НоваяСтрока.МетодПоиска = "EDITBOOKTITLE";
    НоваяСтрока.Параметр    = "--spreadsheet";
    НоваяСтрока.Описание    = "BookID";
    НоваяСтрока.Область     = "Book work";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "EditBookTitle";
    НоваяСтрока.МетодПоиска = "EDITBOOKTITLE";
    НоваяСтрока.Параметр    = "--title";
    НоваяСтрока.Описание    = "New name";
    НоваяСтрока.Область     = "Book work";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "AddSheet";
    НоваяСтрока.МетодПоиска = "ADDSHEET";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Sheet work";
    НоваяСтрока.ОписаниеМетода   = "Adds a new sheet to the book";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "AddSheet";
    НоваяСтрока.МетодПоиска = "ADDSHEET";
    НоваяСтрока.Параметр    = "--spreadsheet";
    НоваяСтрока.Описание    = "BookIdentifier";
    НоваяСтрока.Область     = "Sheet work";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "AddSheet";
    НоваяСтрока.МетодПоиска = "ADDSHEET";
    НоваяСтрока.Параметр    = "--title";
    НоваяСтрока.Описание    = "NewSheetName";
    НоваяСтрока.Область     = "Sheet work";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "DeleteSheet";
    НоваяСтрока.МетодПоиска = "DELETESHEET";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Sheet work";
    НоваяСтрока.ОписаниеМетода   = "Deletes a sheet from the book";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "DeleteSheet";
    НоваяСтрока.МетодПоиска = "DELETESHEET";
    НоваяСтрока.Параметр    = "--spreadsheet";
    НоваяСтрока.Описание    = "BookIdentifier";
    НоваяСтрока.Область     = "Sheet work";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "DeleteSheet";
    НоваяСтрока.МетодПоиска = "DELETESHEET";
    НоваяСтрока.Параметр    = "--sheet";
    НоваяСтрока.Описание    = "IdentifierOfSheetToDelete";
    НоваяСтрока.Область     = "Sheet work";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "CopySheet";
    НоваяСтрока.МетодПоиска = "COPYSHEET";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Sheet work";
    НоваяСтрока.ОписаниеМетода   = "Copies a sheet from one book to another";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "CopySheet";
    НоваяСтрока.МетодПоиска = "COPYSHEET";
    НоваяСтрока.Параметр    = "--from";
    НоваяСтрока.Описание    = "SourceBookID";
    НоваяСтрока.Область     = "Sheet work";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "CopySheet";
    НоваяСтрока.МетодПоиска = "COPYSHEET";
    НоваяСтрока.Параметр    = "--to";
    НоваяСтрока.Описание    = "DestinationBookID";
    НоваяСтрока.Область     = "Sheet work";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "CopySheet";
    НоваяСтрока.МетодПоиска = "COPYSHEET";
    НоваяСтрока.Параметр    = "--sheet";
    НоваяСтрока.Описание    = "CopiedSheetID";
    НоваяСтрока.Область     = "Sheet work";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "SetCellValues";
    НоваяСтрока.МетодПоиска = "SETCELLVALUES";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Data work";
    НоваяСтрока.ОписаниеМетода   = "Sets sheet cell values";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "SetCellValues";
    НоваяСтрока.МетодПоиска = "SETCELLVALUES";
    НоваяСтрока.Параметр    = "--spreadsheet";
    НоваяСтрока.Описание    = "BookID";
    НоваяСтрока.Область     = "Data work";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "SetCellValues";
    НоваяСтрока.МетодПоиска = "SETCELLVALUES";
    НоваяСтрока.Параметр    = "--Fill data where the key is the cell name like A1";
    НоваяСтрока.Описание    = "data";
    НоваяСтрока.Область     = "Data work";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "SetCellValues";
    НоваяСтрока.МетодПоиска = "SETCELLVALUES";
    НоваяСтрока.Параметр    = "--sheetname";
    НоваяСтрока.Описание    = "Sheet name (first sheet by default) (необяз. по ум. - Пустое значение)";
    НоваяСтрока.Область     = "Data work";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "SetCellValues";
    НоваяСтрока.МетодПоиска = "SETCELLVALUES";
    НоваяСтрока.Параметр    = "--dim";
    НоваяСтрока.Описание    = "Main dimension when filling the array range (необяз. по ум. - COLUMNS)";
    НоваяСтрока.Область     = "Data work";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "ClearCells";
    НоваяСтрока.МетодПоиска = "CLEARCELLS";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Data work";
    НоваяСтрока.ОписаниеМетода   = "Clears the value in cells";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "ClearCells";
    НоваяСтрока.МетодПоиска = "CLEARCELLS";
    НоваяСтрока.Параметр    = "--spreadsheet";
    НоваяСтрока.Описание    = "BookID";
    НоваяСтрока.Область     = "Data work";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "ClearCells";
    НоваяСтрока.МетодПоиска = "CLEARCELLS";
    НоваяСтрока.Параметр    = "--cells";
    НоваяСтрока.Описание    = "Array of cells like A1 to be cleared";
    НоваяСтрока.Область     = "Data work";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "ClearCells";
    НоваяСтрока.МетодПоиска = "CLEARCELLS";
    НоваяСтрока.Параметр    = "--sheetname";
    НоваяСтрока.Описание    = "Sheet name (first sheet by default) (необяз. по ум. - Пустое значение)";
    НоваяСтрока.Область     = "Data work";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "GetCellValues";
    НоваяСтрока.МетодПоиска = "GETCELLVALUES";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Data work";
    НоваяСтрока.ОписаниеМетода   = "Gets cell values of the table";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "GetCellValues";
    НоваяСтрока.МетодПоиска = "GETCELLVALUES";
    НоваяСтрока.Параметр    = "--spreadsheet";
    НоваяСтрока.Описание    = "BookID";
    НоваяСтрока.Область     = "Data work";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "GetCellValues";
    НоваяСтрока.МетодПоиска = "GETCELLVALUES";
    НоваяСтрока.Параметр    = "--type cells to get (whole sheet if not filled)";
    НоваяСтрока.Описание    = "cells (необяз. по ум. - Пустое значение)";
    НоваяСтрока.Область     = "Data work";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "gsheets";
    НоваяСтрока.Модуль      = "OPI_GoogleSheets";
    НоваяСтрока.Метод       = "GetCellValues";
    НоваяСтрока.МетодПоиска = "GETCELLVALUES";
    НоваяСтрока.Параметр    = "--sheetname";
    НоваяСтрока.Описание    = "Sheet name (first sheet by default) (необяз. по ум. - Пустое значение)";
    НоваяСтрока.Область     = "Data work";

    Возврат ТаблицаСостава;
КонецФункции

