﻿// Location OS: ./OInt/tools/Modules/OPI_TestDataRetrieval.os

// MIT License

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

// BSLLS:LatinAndCyrillicSymbolInWord-off
// BSLLS:IncorrectLineBreak-off
// BSLLS:UsingHardcodePath-off
// BSLLS:Typo-off
// BSLLS:DeprecatedMessage-off
// BSLLS:UsingServiceTag-off
// BSLLS:ExecuteExternalCodeInCommonModule-off
// BSLLS:DuplicateStringLiteral-off

//@skip-check use-non-recommended-method

// Uncomment if OneScript is executed
// #Use "./internal"
// #Use asserts

#Region ServiceProgramInterface

Function GetTestingSectionMapping() Export
    
    StandardDependencies = "[Decode, Build]";
    GoogleDependencies = "Testing-GoogleWorkspace";
    
    Sections = New Structure;
    Sections.Insert("Telegram" , StandardDependencies);
    Sections.Insert("VK" , StandardDependencies);
    Sections.Insert("Viber" , StandardDependencies);
    Sections.Insert("Twitter" , StandardDependencies);
    Sections.Insert("YandexDisk" , StandardDependencies);
    Sections.Insert("GoogleWorkspace", StandardDependencies);
    Sections.Insert("GoogleCalendar" , GoogleDependencies);      
    Sections.Insert("GoogleDrive" , GoogleDependencies);
    Sections.Insert("GoogleSheets" , GoogleDependencies);
    Sections.Insert("Notion" , StandardDependencies);
    Sections.Insert("Slack" , StandardDependencies);
    Sections.Insert("Airtable" , StandardDependencies);
    Sections.Insert("Dropbox" , StandardDependencies);
        
    Return Sections;
    
EndFunction

Function GetTestTable() Export
    
    Telegram = "Telegram";
    VK = "VK";
    YDisk = "YandexDisk";
    Calendar = "GoogleCalendar";
    Twitter = "Twitter";
    Viber = "Viber";
    Drive = "GoogleDrive";
    VSpace = "GoogleWorkspace";
    Notion = "Notion";
    Slack = "Slack";
    Tables = "GoogleSheets";
    AirT = "Airtable";
    Dropbox = "Dropbox";
    
    TestTable = New ValueTable;
    TestTable.Columns.Add("Method");
    TestTable.Columns.Add("Synonym");
    TestTable.Columns.Add("Section");
                                              
    NewTest(TestTable, "Telegram_GetBotInfo" , "Get bot information" , Telegram);     
    NewTest(TestTable, "Telegram_GetUpdates" , "Get updates" , Telegram);
    NewTest(TestTable, "Telegram_SetWebhook" , "Set Webhook" , Telegram);
    NewTest(TestTable, "Telegram_SendTextMessage" , "Send text message" , Telegram);
    NewTest(TestTable, "Telegram_SendImage" , "Send image" , Telegram);
    NewTest(TestTable, "Telegram_SendVideo" , "Send video" , Telegram);
    NewTest(TestTable, "Telegram_SendAudio" , "Send audio" , Telegram);
    NewTest(TestTable, "Telegram_SendDocument" , "Send document" , Telegram);
    NewTest(TestTable, "Telegram_SendGIF" , "Send GIF" , Telegram);
    NewTest(TestTable, "Telegram_SendMediaGroup" , "Send media group" , Telegram);
    NewTest(TestTable, "Telegram_SendLocation" , "Send location" , Telegram);
    NewTest(TestTable, "Telegram_SendContact" , "Send contact" , Telegram);
    NewTest(TestTable, "Telegram_SendPoll" , "Send poll" , Telegram);
    NewTest(TestTable, "Telegram_ForwardMessage" , "Forward message" , Telegram);
    NewTest(TestTable, "Telegram_BanUnban" , "Ban/Unban" , Telegram);
    NewTest(TestTable, "Telegram_CreateInvitationLink" , "Create invitation link" , Telegram);
    NewTest(TestTable, "Telegram_PinUnpinMessage" , "Pin/Unpin message" , Telegram);
    NewTest(TestTable, "Telegram_GetMemberCount" , "Get participant count" , Telegram);
    NewTest(TestTable, "Telegram_GetForumAvatarsList", "Get forum avatars list", Telegram);
    NewTest(TestTable, "Telegram_CreateDeleteForumTopic" , "Create/Delete forum topic" , Telegram);
    NewTest(TestTable, "Telegram_ChangeMainTopicName" , "Change main topic name" , Telegram);
    NewTest(TestTable, "Telegram_HideShowMainTopic" , "Hide/Show main topic" , Telegram);
    
    NewTest(TestTable, "VK_CreateTokenLink" , "Create token retrieval link", VK);
    NewTest(TestTable, "VK_CreateDeletePost" , "Create/Delete post" , VK);
    NewTest(TestTable, "VK_CreateCompositePost" , "Create/Delete composite post" , VK);
    NewTest(TestTable, "VK_CreatePoll" , "Create poll" , VK);
    NewTest(TestTable, "VK_SaveDeleteImage" , "Add/Delete image" , VK);
    NewTest(TestTable, "VK_CreateStory" , "Create story" , VK);
    NewTest(TestTable, "VK_DiscussionMethods" , "Actions with discussions" , VK);
    NewTest(TestTable, "VK_LikeRepostComment" , "Like/Repost/Comment" , VK);
    NewTest(TestTable, "VK_GetStatistics" , "Get statistics" , VK);
    NewTest(TestTable, "VK_GetPostStatistics" , "Get post statistics" , VK);
    NewTest(TestTable, "VK_CreateAdCampaign" , "Create advertising campaign" , VK);
    NewTest(TestTable, "VK_SendMessage" , "Send message" , VK);
    NewTest(TestTable, "VK_GetProductCategories" , "Get product categories" , VK);
    NewTest(TestTable, "VK_CreateProductSelection" , "Create product and selection" , VK);
    NewTest(TestTable, "VK_CreateProductWithProperties" , "Create product with properties" , VK);
    NewTest(TestTable, "VK_GetProductList" , "Get product list" , VK);
    NewTest(TestTable, "VK_GetSelectionList" , "Get selection list" , VK);
    NewTest(TestTable, "VK_GetPropertyList" , "Get property list" , VK);
    NewTest(TestTable, "VK_GetOrderList" , "Get order list" , VK);
    NewTest(TestTable, "VK_UploadVideo" , "Upload video" , VK);
    
    NewTest(TestTable, "YDisk_GetDiskInfo" , "Get disk information" , YDisk);
    NewTest(TestTable, "YDisk_CreateFolder" , "Create folder" , YDisk);
    NewTest(TestTable, "YDisk_UploadByUrlAndGetObject", "Upload by URL and get" , YDisk);
    NewTest(TestTable, "YDisk_UploadDeleteFile" , "Upload/Delete file" , YDisk);
    NewTest(TestTable, "YDisk_CreateObjectCopy" , "Create object copy" , YDisk);
    NewTest(TestTable, "YDisk_GetDownloadLink" , "Get download link" , YDisk);
    NewTest(TestTable, "YDisk_GetFileList" , "Get list of files" , YDisk);
    NewTest(TestTable, "YDisk_MoveObject" , "Move object" , YDisk);
    NewTest(TestTable, "YDisk_PublicObjectActions" , "Actions with public objects", YDisk);
    NewTest(TestTable, "YDisk_GetPublishedList" , "Get published list" , YDisk);
    
    NewTest(TestTable, "GV_GetAuthorizationLink" , "Get authorization link" , VSpace);
    NewTest(TestTable, "GV_GetToken" , "Get token" , VSpace);
    NewTest(TestTable, "GV_UpdateToken" , "Refresh token" , VSpace);
    
    NewTest(TestTable, "GC_GetCalendarList" , "Get list of calendars" , Calendar);
    NewTest(TestTable, "GC_CreateDeleteCalendar" , "Create/Delete calendar" , Calendar);
    NewTest(TestTable, "GC_CreateDeleteEvent" , "Create/Delete event" , Calendar);
    NewTest(TestTable, "GC_GetEventList" , "Get list of events" , Calendar);
    
    NewTest(TestTable, "GD_GetCatalogList" , "Get list of directories" , Drive);
    NewTest(TestTable, "GD_UploadDeleteFile" , "Upload/Delete file" , Drive);
    NewTest(TestTable, "GD_CreateDeleteComment" , "Create/Delete Comment" , Drive);
    NewTest(TestTable, "GD_CreateCatalog" , "Create/Delete catalog" , Drive);
    
    NewTest(TestTable, "GT_CreateTable" , "Create table" , Tables);
    NewTest(TestTable, "GT_GetTable" , "Get table" , Tables);
    NewTest(TestTable, "GT_FillClearCells" , "Fill/Clear cells" , Tables);
    
    NewTest(TestTable, "Twitter_GetAuthorizationLink" , "Get authorization link" , Twitter);
    NewTest(TestTable, "Twitter_UpdateToken" , "Refresh token" , Twitter);
    NewTest(TestTable, "Twitter_CreateTextTweet" , "Text tweet" , Twitter);
    NewTest(TestTable, "Twitter_CreateTweetWithImage" , "Tweet with image" , Twitter);
    NewTest(TestTable, "Twitter_CreateTweetWithVideo" , "Tweet with video" , Twitter);
    NewTest(TestTable, "Twitter_CreateTweetWithGif" , "Tweet with gif" , Twitter);
    NewTest(TestTable, "Twitter_CreateTweetWithPoll" , "Tweet with poll" , Twitter);
    
    NewTest(TestTable, "Viber_GetChannelInfo" , "Get channel info" , Viber);
    NewTest(TestTable, "Viber_GetUserData" , "Get user data" , Viber);
    NewTest(TestTable, "Viber_GetOnlineUsers" , "Get online users" , Viber);
    NewTest(TestTable, "Viber_SendTextMessage" , "Send text message" , Viber);
    NewTest(TestTable, "Viber_SendImage" , "Send image" , Viber);
    NewTest(TestTable, "Viber_SendFile" , "SendFile" , Viber);
    NewTest(TestTable, "Viber_SendContact" , "Send contact" , Viber);
    NewTest(TestTable, "Viber_SendLocation" , "SendLocation" , Viber);
    NewTest(TestTable, "Viber_SendLink" , "SendLink" , Viber);
    
    NewTest(TestTable, "Notion_CreatePage" , "Create page" , Notion);
    NewTest(TestTable, "Notion_CreateEditDatabase" , "Create/Edit database" , Notion);
    NewTest(TestTable, "Notion_GetPageInfo" , "Get page info" , Notion);
    NewTest(TestTable, "Notion_GetDatabaseInfo" , "Get database info" , Notion);
    NewTest(TestTable, "Notion_CreatePageInDatabase" , "Create page in database" , Notion);
    NewTest(TestTable, "Notion_EditPageProperties" , "Edit page properties" , Notion);
    NewTest(TestTable, "Notion_CreateDeleteBlock" , "Create/Delete block" , Notion);
    NewTest(TestTable, "Notion_GetUsers" , "Get users" , Notion);
    NewTest(TestTable, "Notion_GetUserData" , "Get user data" , Notion);
    
    NewTest(TestTable, "Slack_GetBotInfo" , "Get bot information" , Slack);
    NewTest(TestTable, "Slack_GetUserList" , "Get user list" , Slack);
    NewTest(TestTable, "Slack_GetRegionList" , "Get region list" , Slack);
    NewTest(TestTable, "Slack_SendDeleteMessage" , "Send/Delete message" , Slack);
    NewTest(TestTable, "Slack_SendDeleteEphemeral" , "Send/Delete ephemeral" , Slack);
    NewTest(TestTable, "Slack_GetScheduledMessages" , "Get scheduled messages" , Slack);
    NewTest(TestTable, "Slack_CreateArchiveChannel" , "Create/Archive channel" , Slack);
    NewTest(TestTable, "Slack_GetChannelList" , "Get channel list" , Slack);
    NewTest(TestTable, "Slack_OpenCloseDialog" , "Open/Close dialog" , Slack);
    NewTest(TestTable, "Slack_GetFileList" , "Get list of files" , Slack);
    NewTest(TestTable, "Slack_UploadDeleteFile" , "Upload/Delete file" , Slack);
    NewTest(TestTable, "Slack_GetExternalFileList" , "Get external file list" , Slack);
    NewTest(TestTable, "Slack_UploadDeleteExternalFile" , "Upload/Delete external file" , Slack);
    
    NewTest(TestTable, "AT_CreateDatabase" , "Create/Edit database" , AirT);
    NewTest(TestTable, "AT_CreateTable" , "Create/Edit table" , AirT);
    NewTest(TestTable, "AT_CreateField" , "Create/Edit field" , AirT);
    NewTest(TestTable, "AT_CreateDeleteRecords" , "Create/Delete records" , AirT);
    
    NewTest(TestTable, "Dropbox_GetUpdateToken" , "Get/Update token" , Dropbox);
    NewTest(TestTable, "Dropbox_UploadFile" , "Upload file" , Dropbox);
    NewTest(TestTable, "Dropbox_UploadFileByURL" , "Upload file by URL" , Dropbox);
    NewTest(TestTable, "Dropbox_CreateFolder" , "Create folder" , Dropbox);
    NewTest(TestTable, "Dropbox_CreateDeleteTag" , "Create/Delete tag" , Dropbox);
    NewTest(TestTable, "Dropbox_GetAccount" , "Get account data" , Dropbox);
    NewTest(TestTable, "Dropbox_AccessManagement" , "Access management" , Dropbox);
   
    Return TestTable;
                                    
EndFunction                             

Function ExpectsThat(Value) Export
    
    Try
        
        Module = GetCommonModule("UTest");
        Awaiting = TypeValue(Module) = Type("CommonModule");
        Return Module.ExpectsThat(Value);  
           
    Except
        Return Awaiting.What(Value);
    EndTry;
    
EndFunction

Function FormYAXTests() Export
    
    Module = GetCommonModule("UTTests");
    Sections = GetTestingSectionMapping();
    TestTable = GetTestTable();
    
    For Each Section In Sections Do
        
        CurrentSection = Section.Key;
        Filter = New Structure("Section", CurrentSection);
        SectionTests = TestTable.FindLines(Filter);
        
        Set = Module.AddTestSet(CurrentSection);
        
        For Each Test In SectionTests Do
            Set.AddServerTest(Test.Method, Test.Synonym);
        EndDo;
        
    EndDo;
    
    Return "";
    
EndFunction

Function FormAssertsTests() Export
    
   TestTable = GetTestTable();
   ArrayOfTests = New Array;
   
   For Each Test In TestTable Do     
       ArrayOfTests.Add(Test.Method);
   EndDo;
   
   Return ArrayOfTests;
   
EndFunction

Function GetParameter(Parameter) Export 

    Path = DataFilePath(); 
    Return GetValueFromFile(Parameter, Path);

EndFunction

Function GetBinary(Parameter) Export
    
    Path = DataFilePath(); 
    LocalParameter = Parameter + "Local";
    MainValue = GetValueFromFile(Parameter , Path);
    LocalValue = GetValueFromFile(LocalParameter, Path);
    
    LocalFile = New File(LocalValue);
    
    If LocalFile.Exists() Then
        Value = New BinaryData(LocalValue);
    Else
        Value = MainValue;
    EndIf;
    
    If TypeValue(Value) = Type("String") Then
        Value = GetFilePath(Value, LocalParameter);    
    EndIf;
    
    Return Value;
    
EndFunction

Function GetFilePath(Val Path, LocalParameter, Val SaveLocally = True) Export
    
    If StrFind(Path, "http") > 0 
        Or StrFind(Path, "www") > 0 Then
        
        AndVF = GetTempFileName();
        CopyFile(Path, AndVF);
        Path = AndVF;
        Binary = New BinaryData(Path);
        
        If SaveLocally Then
            WriteParameter(LocalParameter, AndVF);
        Else
            DeleteFiles(AndVF);
        EndIf;
        
    Else
        
        Binary = New BinaryData(Path);
        
    EndIf;
    
    Return Binary;
    
EndFunction

Procedure ParameterToCollection(Parameter, Collection) Export

	Value = GetParameter(Parameter);
	Collection.Insert(Parameter, Value);
		
EndProcedure

Procedure BinaryToCollection(Parameter, Collection) Export

	Value = GetBinary(Parameter);
	Collection.Insert(Parameter, Value);
		
EndProcedure

Procedure WriteParameter(Parameter, Value) Export
    
    Path = DataFilePath(); 
    WriteParameterToFile(Parameter, Value, Path);
   
EndProcedure

Procedure WriteLog(Val Result, Val Method, Val Library = "") Export
    
    Header = String(OPI_Tools.GetCurrentDate()) + " | " + Method;
    
    Try
        Data = OPI_Tools.JSONString(Result);
    Except
        Data = "Not JSON: " + String(Result);
    EndTry;
    
    Data = " " + Data; 
    
    Notify(Header);
    Notify(Symbols.PS);
    Notify(Data);
    Notify(Symbols.PS);
    Notify("---------------------------------");
    Notify(Symbols.PS);
    
    If ValueIsFilled(Library) Then
		WriteLogFile(Data, Method, Library);
	EndIf;
	
EndProcedure

#EndRegion

#Region ServiceProceduresAndFunctions

Function GetValueFromFile(Parameter, Path) 
        
    Values = OPI_Tools.ReadJSONFile(Path);    
    Return ?(Values.Property(Parameter), Values[Parameter], "");
    
EndFunction

Function DataFilePath()
    
    Path = "";
    PossiblePaths = New Array;
    PossiblePaths.Add("./data.json");
    PossiblePaths.Add("C:\GDrive\My Drive\data.json");
    PossiblePaths.Add("D:\GD\My Drive\data.json");
    
    For Each PossiblePath In PossiblePaths Do
    	
	    RepositoryFile = New File(PossiblePath);
	    
	    If RepositoryFile.Exists() Then
	        Path = PossiblePath;
	    EndIf;    
    
    EndDo;
     
    Return Path;
    
EndFunction

Function GetCommonModule(Val Name)
    SetSafeMode(True);    
    Module = Calculate(Name);     
    SetSafeMode(False);    
    Return Module;    
EndFunction

Procedure NewTest(ValueTable, Val Method, Val Synonym, Val Section)
    
    NewTest = ValueTable.Add();
    NewTest.Method = Method;
    NewTest.Synonym = Synonym;
    NewTest.Section = Section;
    
EndProcedure

Procedure WriteParameterToFile(Val Parameter, Val Value, Val Path)
                      
    Values = OPI_Tools.ReadJSONFile(Path);
    Values.Insert(Parameter, Value);

    Record = New WritingJSON;
    JSONWriteParameters = New JSONWriteParameters(JSONLineBreak.Auto, Symbols.Tab);
    Record.OpenFile(Path, , , JSONWriteParameters);
    WriteJSON(Record, Values);
    Record.Close();

EndProcedure

Procedure WriteLogFile(Val Data, Val Method, Val Library)
	
	Try
		
		LogPath = "./docs/results";
		LibraryLogPath = LogPath + "/" + Library;
		
		LogDirectory = New File(LogPath);
		
		If Not LogDirectory.Exists() Then
			CreateDirectory(LogPath);
		EndIf;
		
		LibraryLogCatalog = New File(LibraryLogPath);
        
        If Not LibraryLogCatalog.Exists() Then
            CreateDirectory(LibraryLogPath);
        EndIf;
		 
		FilePath = LibraryLogPath + "/" + Method + ".log";
		LogFile = New File(FilePath);
		
		If Not LogFile.Exists() Then
			LogDocument = New TextDocument;
			LogDocument.SetText(Data);
			LogDocument.Write(FilePath);
		EndIf;
		
	Except
		Notify("Failed to write log file!: " + ErrorDescription());	
	EndTry;
	
EndProcedure

#EndRegion