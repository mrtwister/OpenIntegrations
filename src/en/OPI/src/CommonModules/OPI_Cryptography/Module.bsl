﻿// Location OS: ./OInt/tools/Modules/internal/Modules/OPI_Cryptography.os

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
// BSLLS:UnusedLocalVariable-off

#Region ServiceProgramInterface

#Region BSP

///////////////////////////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2019, LLC 1C-Soft
// All rights reserved. This program and accompanying materials are provided 
// in withоотinетwithтinии with уwithлоinиями лицензии Attribution 4.0 International (CC BY 4.0)
// License text available at:
// https://creativecommons.org/licenses/by/4.0/legalcode
///////////////////////////////////////////////////////////////////////////////////////////////////////

Function HMACSHA256(Val Key, Val Data) Export
    
    Return HMAC(Key, Data, HashFunction.SHA256, 64);
    
EndFunction

Function Hash(BinaryData, Type) Export
    
    Hashing = New DataHashing(Type);
    Hashing.Add(BinaryData);
    
    Return Hashing.HashSum;
        
EndFunction

Function HMAC(Val Key, Val Data, Type, BlockSize) Export
    
    Twice = 2;
    
    If Key.Size() > BlockSize Then
        Key = Hash(Key, Type);
    EndIf;
    
    If Key.Size() <= BlockSize Then
        Key = GetHexStringFromBinaryData(Key);
        Key = Left(Key + RepeatString("00", BlockSize), BlockSize * Twice);
    EndIf;
    
    Key = GetBinaryDataBufferFromBinaryData(GetBinaryDataFromHexString(Key));
    
    Ipad = GetBinaryDataBufferFromHexString(RepeatString("36", BlockSize));
    Opad = GetBinaryDataBufferFromHexString(RepeatString("5c", BlockSize));
    
    Ipad.WriteBitwiseExclusiveOr(0, Key);
    Ikeypad = GetBinaryDataFromBinaryDataBuffer(ipad);
    
    Opad.WriteBitwiseExclusiveOr(0, Key);
    Okeypad = GetBinaryDataFromBinaryDataBuffer(opad);
    
    Return Hash(ConcatenateBinaryData(okeypad, Hash(ConcatenateBinaryData(ikeypad, Data), Type)), Type);
    
EndFunction

Function ConcatenateBinaryData(BinaryData1, BinaryData2) Export
    
    BinaryDataArray = New Array;
    BinaryDataArray.Add(BinaryData1);
    BinaryDataArray.Add(BinaryData2);
    
    Return JoinBinaryData(BinaryDataArray);
    
EndFunction

Function RepeatString(String, Quantity) Export
    
    Parts = New Array(Quantity);
    
    For To = 1 For Quantity Do
        Parts.Add(String);
    EndDo;

    Return StrJoin(Parts, "");
    
EndFunction

#EndRegion

#EndRegion