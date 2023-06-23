{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit WIDESTRUTILS_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  activex,
  dcscript,
  dcsystem,
  dcdreamlib,
  Windows,
  SysUtils,
  Classes,
  WideStrUtils;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function (p0 : Cardinal): PWideChar of object;

{_T1 = function (const p0 : PWideChar): Cardinal of object;}

{_T2 = function (p0 : PWideChar;
const p1 : PWideChar;
p2 : Cardinal): PWideChar of object;}

{_T3 = function (const p0 : PWideChar): PWideChar of object;}

{_T4 = procedure (p0 : PWideChar) of object;}

{_T5 = function (const p0 : PWideChar): Cardinal of object;}

{_T6 = function (const p0 : PWideChar): PWideChar of object;}

{_T7 = function (p0 : PWideChar;
const p1 : PWideChar): PWideChar of object;}

{_T8 = function (p0 : PWideChar;
const p1 : PWideChar): PWideChar of object;}

{_T9 = function (p0 : PWideChar;
const p1 : PWideChar;
p2 : Cardinal): PWideChar of object;}

{_T10 = function (p0 : PWideChar;
const p1 : WideString): PWideChar of object;}

{_T11 = function (p0 : PWideChar;
const p1 : WideString;
p2 : Cardinal): PWideChar of object;}

{_T12 = function (p0 : PWideChar;
p1 : WideChar): PWideChar of object;}

{_T13 = function (const p0 : PWideChar;
const p1 : PWideChar): Integer of object;}

{_T14 = function (const p0 : PWideChar;
const p1 : PWideChar): PWideChar of object;}

_T15 = function (const p0 : UTF8string): UTF8string of object;

_T16 = _T15;

_T17 = function (const p0 : string;
const p1 : Integer): UTF8string of object;

_T18 = function (const p0 : UTF8string;
const p1 : Integer): string of object;

_T19 = function (const p0 : UTF8string): TEncodeType of object;

_T20 = function (const p0 : UTF8string): Boolean of object;

_T21 = _T20;

_T22 = function (p0 : TStream): Boolean of object;

_T23 = procedure (p0 : TStream;
p1 : TStream;
p2 : Integer) of object;

_T24 = _T23;

_T25 = function (const p0 : WideString): PWideChar of object;

_T26 = function (const p0 : WideString;
p1 : WideChar): WideString of object;

{_T27 = function (var p0 : PWideChar;
p1 : WideChar): WideString of object;}

_T28 = _T26;

_T29 = function (const p0 : WideString;
p1 : TTextLineBreakStyle): WideString of object;

_T30 = function (const p0 : WideString;
const p1 : WideString;
const p2 : WideString;
p3 : TReplaceFlags): WideString of object;

_T31 = function (const p0 : WideString;
const p1 : WideString;
const p2 : WideString): WideString of object;

_T32 = _T31;

_T33 = function (p0 : Integer): WideString of object;

{_T34 = function (p0 : PResStringRec): WideString of object;}

_T35 = function (p0 : WideChar;
p1 : CharSet): Boolean of object;

_T36 = function (p0 : WideChar;
p1 : Array of WideChar): Boolean of object;

_T37 = function (p0 : Char): Boolean of object;

_T38 = _T37;

_T39 = function (p0 : Char): Integer of object;

_T40 = _T39;

procedure ____ConvertStreamFromAnsiToUTF8__Wrapper(cArgs : integer; pArgs : PArgList);
begin
case cArgs of
2:
begin
ConvertStreamFromAnsiToUTF8(TStream(VarToObject(OleVariant(pargs^[1]))),TStream(VarToObject(OleVariant(pargs^[0]))));
end;
3:
begin
ConvertStreamFromAnsiToUTF8(TStream(VarToObject(OleVariant(pargs^[2]))),TStream(VarToObject(OleVariant(pargs^[1]))),OleVariant(pargs^[0]));
end;
end
end;

procedure ____ConvertStreamFromUTF8ToAnsi__Wrapper(cArgs : integer; pArgs : PArgList);
begin
case cArgs of
2:
begin
ConvertStreamFromUTF8ToAnsi(TStream(VarToObject(OleVariant(pargs^[1]))),TStream(VarToObject(OleVariant(pargs^[0]))));
end;
3:
begin
ConvertStreamFromUTF8ToAnsi(TStream(VarToObject(OleVariant(pargs^[2]))),TStream(VarToObject(OleVariant(pargs^[1]))),OleVariant(pargs^[0]));
end;
end
end;

function ____WideAdjustLineBreaks__Wrapper(cArgs : integer; pArgs : PArgList) : OleVariant;
begin
case cArgs of
1:
begin
result := WideAdjustLineBreaks(OleVariant(pargs^[0]));
end;
2:
begin
result := WideAdjustLineBreaks(OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
end
end;

procedure __RegisterProps;
begin
end;

const __ConstNames0 : array[0..2] of string = (
'etUSASCII'
,'etUTF8'
,'etANSI'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,etUSASCII));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,etUTF8));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,etANSI));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

procedure __RegisterClasses;
begin
end;

procedure __UnRegisterClasses;
begin
end;

var __RegisteredMethods : TList;
const MethodNames : array[0..24] of string = (
'WStrAlloc'
,'UTF8LowerCase'
,'UTF8UpperCase'
,'AnsiToUtf8Ex'
,'Utf8ToAnsiEx'
,'DetectUTF8Encoding'
,'IsUTF8String'
,'HasExtendCharacter'
,'HasUTF8BOM'
,'ConvertStreamFromAnsiToUTF8'
,'ConvertStreamFromUTF8ToAnsi'
,'WideLastChar'
,'WideQuotedStr'
,'WideDequotedStr'
,'WideAdjustLineBreaks'
,'WideStringReplace'
,'WideReplaceStr'
,'WideReplaceText'
,'LoadWideStr'
,'inOpSet'
,'inOpArray'
,'IsUTF8LeadByte'
,'IsUTF8TrailByte'
,'UTF8CharSize'
,'UTF8CharLength'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T0),[
TypeInfo(Cardinal),TypeInfoPWideChar],Addr(WStrAlloc),cRegister);

RegisterProc(nil,MethodNames[1],mtProc,TypeInfo(_T15),[
TypeInfo(UTF8string),TypeInfo(UTF8string)],Addr(UTF8LowerCase),cRegister);

RegisterProc(nil,MethodNames[2],mtProc,TypeInfo(_T16),[
TypeInfo(UTF8string),TypeInfo(UTF8string)],Addr(UTF8UpperCase),cRegister);

RegisterProc(nil,MethodNames[3],mtProc,TypeInfo(_T17),[
TypeInfo(string),
TypeInfo(Integer),TypeInfo(UTF8string)],Addr(AnsiToUtf8Ex),cRegister);

RegisterProc(nil,MethodNames[4],mtProc,TypeInfo(_T18),[
TypeInfo(UTF8string),
TypeInfo(Integer),TypeInfo(string)],Addr(Utf8ToAnsiEx),cRegister);

RegisterProc(nil,MethodNames[5],mtProc,TypeInfo(_T19),[
TypeInfo(UTF8string),TypeInfo(TEncodeType)],Addr(DetectUTF8Encoding),cRegister);

RegisterProc(nil,MethodNames[6],mtProc,TypeInfo(_T20),[
TypeInfo(UTF8string),TypeInfo(Boolean)],Addr(IsUTF8String),cRegister);

RegisterProc(nil,MethodNames[7],mtProc,TypeInfo(_T21),[
TypeInfo(UTF8string),TypeInfo(Boolean)],Addr(HasExtendCharacter),cRegister);

RegisterProc(nil,MethodNames[8],mtProc,TypeInfo(_T22),[
TypeInfo(TStream),TypeInfo(Boolean)],Addr(HasUTF8BOM),cRegister);

RegisterProc(nil,MethodNames[9],mtScriptProc,TypeInfo(_T23),[
TypeInfo(TStream),
TypeInfo(TStream),
TypeInfo(Integer)],Addr(____ConvertStreamFromAnsiToUTF8__Wrapper),cRegister);

RegisterProc(nil,MethodNames[10],mtScriptProc,TypeInfo(_T24),[
TypeInfo(TStream),
TypeInfo(TStream),
TypeInfo(Integer)],Addr(____ConvertStreamFromUTF8ToAnsi__Wrapper),cRegister);

RegisterProc(nil,MethodNames[11],mtProc,TypeInfo(_T25),[
TypeInfo(WideString),TypeInfoPWideChar],Addr(WideLastChar),cRegister);

RegisterProc(nil,MethodNames[12],mtProc,TypeInfo(_T26),[
TypeInfo(WideString),
TypeInfo(WideChar),TypeInfo(WideString)],Addr(WideQuotedStr),cRegister);

RegisterProc(nil,MethodNames[13],mtProc,TypeInfo(_T28),[
TypeInfo(WideString),
TypeInfo(WideChar),TypeInfo(WideString)],Addr(WideDequotedStr),cRegister);

RegisterProc(nil,MethodNames[14],mtScriptProc,TypeInfo(_T29),[
TypeInfo(WideString),
TypeInfo(TTextLineBreakStyle),TypeInfo(WideString)],Addr(____WideAdjustLineBreaks__Wrapper),cRegister);

RegisterProc(nil,MethodNames[15],mtProc,TypeInfo(_T30),[
TypeInfo(WideString),
TypeInfo(WideString),
TypeInfo(WideString),
TypeInfo(TReplaceFlags),TypeInfo(WideString)],Addr(WideStringReplace),cRegister);

RegisterProc(nil,MethodNames[16],mtProc,TypeInfo(_T31),[
TypeInfo(WideString),
TypeInfo(WideString),
TypeInfo(WideString),TypeInfo(WideString)],Addr(WideReplaceStr),cRegister);

RegisterProc(nil,MethodNames[17],mtProc,TypeInfo(_T32),[
TypeInfo(WideString),
TypeInfo(WideString),
TypeInfo(WideString),TypeInfo(WideString)],Addr(WideReplaceText),cRegister);

RegisterProc(nil,MethodNames[18],mtProc,TypeInfo(_T33),[
TypeInfo(Integer),TypeInfo(WideString)],Addr(LoadWideStr),cRegister);

RegisterProc(nil,MethodNames[19],mtProc,TypeInfo(_T35),[
TypeInfo(WideChar),
TypeInfo(CharSet),TypeInfo(Boolean)],Addr(inOpSet),cRegister);

RegisterProc(nil,MethodNames[20],mtProc,TypeInfo(_T36),[
TypeInfo(WideChar),
ArrayInfo(TypeInfo(WideChar)),TypeInfo(Boolean)],Addr(inOpArray),cRegister);

RegisterProc(nil,MethodNames[21],mtProc,TypeInfo(_T37),[
TypeInfo(Char),TypeInfo(Boolean)],Addr(IsUTF8LeadByte),cRegister);

RegisterProc(nil,MethodNames[22],mtProc,TypeInfo(_T38),[
TypeInfo(Char),TypeInfo(Boolean)],Addr(IsUTF8TrailByte),cRegister);

RegisterProc(nil,MethodNames[23],mtProc,TypeInfo(_T39),[
TypeInfo(Char),TypeInfo(Integer)],Addr(UTF8CharSize),cRegister);

RegisterProc(nil,MethodNames[24],mtProc,TypeInfo(_T40),[
TypeInfo(Char),TypeInfo(Integer)],Addr(UTF8CharLength),cRegister);

end;
initialization
__RegisteredMethods := TList.Create;
_mreg_0;
{RegisterProc(nil,'WStrBufSize',mtProc,TypeInfo(_T1),[
TypeInfoPWideChar,TypeInfo(Cardinal)],Addr(WStrBufSize),cRegister)}

{RegisterProc(nil,'WStrMove',mtProc,TypeInfo(_T2),[
TypeInfoPWideChar,
TypeInfoPWideChar,
TypeInfo(Cardinal),TypeInfoPWideChar],Addr(WStrMove),cRegister)}

{RegisterProc(nil,'WStrNew',mtProc,TypeInfo(_T3),[
TypeInfoPWideChar,TypeInfoPWideChar],Addr(WStrNew),cRegister)}

{RegisterProc(nil,'WStrDispose',mtProc,TypeInfo(_T4),[
TypeInfoPWideChar],Addr(WStrDispose),cRegister)}

{RegisterProc(nil,'WStrLen',mtProc,TypeInfo(_T5),[
TypeInfoPWideChar,TypeInfo(Cardinal)],Addr(WStrLen),cRegister)}

{RegisterProc(nil,'WStrEnd',mtProc,TypeInfo(_T6),[
TypeInfoPWideChar,TypeInfoPWideChar],Addr(WStrEnd),cRegister)}

{RegisterProc(nil,'WStrCat',mtProc,TypeInfo(_T7),[
TypeInfoPWideChar,
TypeInfoPWideChar,TypeInfoPWideChar],Addr(WStrCat),cRegister)}

{RegisterProc(nil,'WStrCopy',mtProc,TypeInfo(_T8),[
TypeInfoPWideChar,
TypeInfoPWideChar,TypeInfoPWideChar],Addr(WStrCopy),cRegister)}

{RegisterProc(nil,'WStrLCopy',mtProc,TypeInfo(_T9),[
TypeInfoPWideChar,
TypeInfoPWideChar,
TypeInfo(Cardinal),TypeInfoPWideChar],Addr(WStrLCopy),cRegister)}

{RegisterProc(nil,'WStrPCopy',mtProc,TypeInfo(_T10),[
TypeInfoPWideChar,
TypeInfo(WideString),TypeInfoPWideChar],Addr(WStrPCopy),cRegister)}

{RegisterProc(nil,'WStrPLCopy',mtProc,TypeInfo(_T11),[
TypeInfoPWideChar,
TypeInfo(WideString),
TypeInfo(Cardinal),TypeInfoPWideChar],Addr(WStrPLCopy),cRegister)}

{RegisterProc(nil,'WStrScan',mtProc,TypeInfo(_T12),[
TypeInfoPWideChar,
TypeInfo(WideChar),TypeInfoPWideChar],Addr(WStrScan),cRegister)}

{RegisterProc(nil,'WStrComp',mtProc,TypeInfo(_T13),[
TypeInfoPWideChar,
TypeInfoPWideChar,TypeInfo(Integer)],Addr(WStrComp),cRegister)}

{RegisterProc(nil,'WStrPos',mtProc,TypeInfo(_T14),[
TypeInfoPWideChar,
TypeInfoPWideChar,TypeInfoPWideChar],Addr(WStrPos),cRegister)}

{RegisterProc(nil,'WideExtractQuotedStr',mtProc,TypeInfo(_T27),[
TypeInfoPWideChar,
TypeInfo(WideChar),TypeInfo(WideString)],Addr(WideExtractQuotedStr),cRegister)}

{RegisterProc(nil,'LoadResWideString',mtProc,TypeInfo(_T34),[
TypeInfoPointer,TypeInfo(WideString)],Addr(LoadResWideString),cRegister)}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnregisterProcs;
end.
