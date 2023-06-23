{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit STRUTILS_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}

uses rtti,
  activex,
  classes,
  dcscript,
  dcsystem,
  dcdreamlib,
  SysUtils,
  Types,
  StrUtils;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}

type
_T0 = function (const p0 : string;
const p1 : string): Boolean of object;

_T1 = _T0;

_T2 = _T0;

_T3 = _T0;

_T4 = _T0;

_T5 = _T0;

_T6 = _T0;

_T7 = _T0;

_T8 = function (const p0 : string;
const p1 : string;
const p2 : string): string of object;

_T9 = _T8;

_T10 = function (const p0 : string;
const p1 : Array of string): Boolean of object;

_T11 = _T10;

_T12 = function (const p0 : string;
const p1 : Array of string): Integer of object;

_T13 = _T12;

_T14 = _T0;

_T15 = _T0;

_T16 = _T0;

_T17 = _T0;

_T18 = _T0;

_T19 = _T0;

_T20 = _T8;

_T21 = _T8;

_T22 = _T10;

_T23 = _T10;

_T24 = _T12;

_T25 = _T12;

_T26 = function (const p0 : string;
p1 : Integer): string of object;

_T27 = function (const p0 : string): string of object;

_T28 = function (const p0 : AnsiString): AnsiString of object;

_T29 = function (const p0 : string;
p1 : Cardinal;
p2 : Cardinal;
const p3 : string): string of object;

_T30 = function (const p0 : Array of string): string of object;

_T31 = function (p0 : Boolean;
const p1 : string;
p2 : string): string of object;

_T32 = function (const p0 : AnsiString;
const p1 : Integer): AnsiString of object;

_T33 = _T32;

_T34 = function (const p0 : AnsiString;
const p1 : Integer;
const p2 : Integer): AnsiString of object;

_T35 = _T32;

_T36 = _T32;

_T37 = _T34;

_T38 = _T32;

_T39 = _T32;

_T40 = _T34;

_T42 = function (const p0 : string;
const p1 : string;
p2 : Integer): Integer of object;

_T43 = function (const p0 : string;
p1 : TSoundexLength): string of object;

_T44 = function (const p0 : string;
p1 : TSoundexIntLength): Integer of object;

_T45 = function (p0 : Integer): string of object;

_T46 = function (const p0 : string): Word of object;

_T47 = function (p0 : Word): string of object;

_T48 = function (const p0 : string;
const p1 : string;
p2 : TSoundexLength): Boolean of object;

_T49 = function (const p0 : string;
const p1 : string;
p2 : TSoundexLength): Integer of object;

_T50 = _T0;

function ____IfThen__Wrapper(p0 : Boolean;
const p1 : string;
p2 : string): string;
begin
result := IfThen(p0,p1,p2);
end;

function ____PosEx__Wrapper(cArgs : integer; pArgs : PArgList) : OleVariant;
begin
case cArgs of
2:
begin
result := PosEx(OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
3:
begin
result := PosEx(OleVariant(pargs^[2]),OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
end
end;

function ____Soundex__Wrapper(cArgs : integer; pArgs : PArgList) : OleVariant;
begin
case cArgs of
1:
begin
result := Soundex(OleVariant(pargs^[0]));
end;
2:
begin
result := Soundex(OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
end
end;

function ____SoundexInt__Wrapper(cArgs : integer; pArgs : PArgList) : OleVariant;
begin
case cArgs of
1:
begin
result := SoundexInt(OleVariant(pargs^[0]));
end;
2:
begin
result := SoundexInt(OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
end
end;

function ____SoundexSimilar__Wrapper(cArgs : integer; pArgs : PArgList) : OleVariant;
begin
case cArgs of
2:
begin
result := SoundexSimilar(OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
3:
begin
result := SoundexSimilar(OleVariant(pargs^[2]),OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
end
end;

function ____SoundexCompare__Wrapper(cArgs : integer; pArgs : PArgList) : OleVariant;
begin
case cArgs of
2:
begin
result := SoundexCompare(OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
3:
begin
result := SoundexCompare(OleVariant(pargs^[2]),OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
end
end;

procedure __RegisterProps;
begin
end;

const __ConstNames0 : array[0..3] of string = (
'WordDelimiters'
,'soDown'
,'soMatchCase'
,'soWholeWord'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,VarFromSet(WordDelimiters, sizeof(WordDelimiters))));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,soDown));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,soMatchCase));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,soWholeWord));
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
const MethodNames : array[0..49] of string = (
'ResemblesText'
,'AnsiResemblesText'
,'ContainsText'
,'AnsiContainsText'
,'StartsText'
,'AnsiStartsText'
,'EndsText'
,'AnsiEndsText'
,'ReplaceText'
,'AnsiReplaceText'
,'MatchText'
,'AnsiMatchText'
,'IndexText'
,'AnsiIndexText'
,'ContainsStr'
,'AnsiContainsStr'
,'StartsStr'
,'AnsiStartsStr'
,'EndsStr'
,'AnsiEndsStr'
,'ReplaceStr'
,'AnsiReplaceStr'
,'MatchStr'
,'AnsiMatchStr'
,'IndexStr'
,'AnsiIndexStr'
,'DupeString'
,'ReverseString'
,'AnsiReverseString'
,'StuffString'
,'RandomFrom'
,'IfThen'
,'LeftStr'
,'RightStr'
,'MidStr'
,'LeftBStr'
,'RightBStr'
,'MidBStr'
,'AnsiLeftStr'
,'AnsiRightStr'
,'AnsiMidStr'
,'PosEx'
,'Soundex'
,'SoundexInt'
,'DecodeSoundexInt'
,'SoundexWord'
,'DecodeSoundexWord'
,'SoundexSimilar'
,'SoundexCompare'
,'SoundexProc'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T0),[
TypeInfo(string),
TypeInfo(string),TypeInfo(Boolean)],Addr(ResemblesText),cRegister);

RegisterProc(nil,MethodNames[1],mtProc,TypeInfo(_T1),[
TypeInfo(string),
TypeInfo(string),TypeInfo(Boolean)],Addr(AnsiResemblesText),cRegister);

RegisterProc(nil,MethodNames[2],mtProc,TypeInfo(_T2),[
TypeInfo(string),
TypeInfo(string),TypeInfo(Boolean)],Addr(ContainsText),cRegister);

RegisterProc(nil,MethodNames[3],mtProc,TypeInfo(_T3),[
TypeInfo(string),
TypeInfo(string),TypeInfo(Boolean)],Addr(AnsiContainsText),cRegister);

RegisterProc(nil,MethodNames[4],mtProc,TypeInfo(_T4),[
TypeInfo(string),
TypeInfo(string),TypeInfo(Boolean)],Addr(StartsText),cRegister);

RegisterProc(nil,MethodNames[5],mtProc,TypeInfo(_T5),[
TypeInfo(string),
TypeInfo(string),TypeInfo(Boolean)],Addr(AnsiStartsText),cRegister);

RegisterProc(nil,MethodNames[6],mtProc,TypeInfo(_T6),[
TypeInfo(string),
TypeInfo(string),TypeInfo(Boolean)],Addr(EndsText),cRegister);

RegisterProc(nil,MethodNames[7],mtProc,TypeInfo(_T7),[
TypeInfo(string),
TypeInfo(string),TypeInfo(Boolean)],Addr(AnsiEndsText),cRegister);

RegisterProc(nil,MethodNames[8],mtProc,TypeInfo(_T8),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),TypeInfo(string)],Addr(ReplaceText),cRegister);

RegisterProc(nil,MethodNames[9],mtProc,TypeInfo(_T9),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),TypeInfo(string)],Addr(AnsiReplaceText),cRegister);

RegisterProc(nil,MethodNames[10],mtProc,TypeInfo(_T10),[
TypeInfo(string),
ArrayInfo(TypeInfo(string)),TypeInfo(Boolean)],Addr(MatchText),cRegister);

RegisterProc(nil,MethodNames[11],mtProc,TypeInfo(_T11),[
TypeInfo(string),
ArrayInfo(TypeInfo(string)),TypeInfo(Boolean)],Addr(AnsiMatchText),cRegister);

RegisterProc(nil,MethodNames[12],mtProc,TypeInfo(_T12),[
TypeInfo(string),
ArrayInfo(TypeInfo(string)),TypeInfo(Integer)],Addr(IndexText),cRegister);

RegisterProc(nil,MethodNames[13],mtProc,TypeInfo(_T13),[
TypeInfo(string),
ArrayInfo(TypeInfo(string)),TypeInfo(Integer)],Addr(AnsiIndexText),cRegister);

RegisterProc(nil,MethodNames[14],mtProc,TypeInfo(_T14),[
TypeInfo(string),
TypeInfo(string),TypeInfo(Boolean)],Addr(ContainsStr),cRegister);

RegisterProc(nil,MethodNames[15],mtProc,TypeInfo(_T15),[
TypeInfo(string),
TypeInfo(string),TypeInfo(Boolean)],Addr(AnsiContainsStr),cRegister);

RegisterProc(nil,MethodNames[16],mtProc,TypeInfo(_T16),[
TypeInfo(string),
TypeInfo(string),TypeInfo(Boolean)],Addr(StartsStr),cRegister);

RegisterProc(nil,MethodNames[17],mtProc,TypeInfo(_T17),[
TypeInfo(string),
TypeInfo(string),TypeInfo(Boolean)],Addr(AnsiStartsStr),cRegister);

RegisterProc(nil,MethodNames[18],mtProc,TypeInfo(_T18),[
TypeInfo(string),
TypeInfo(string),TypeInfo(Boolean)],Addr(EndsStr),cRegister);

RegisterProc(nil,MethodNames[19],mtProc,TypeInfo(_T19),[
TypeInfo(string),
TypeInfo(string),TypeInfo(Boolean)],Addr(AnsiEndsStr),cRegister);

RegisterProc(nil,MethodNames[20],mtProc,TypeInfo(_T20),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),TypeInfo(string)],Addr(ReplaceStr),cRegister);

RegisterProc(nil,MethodNames[21],mtProc,TypeInfo(_T21),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(string),TypeInfo(string)],Addr(AnsiReplaceStr),cRegister);

RegisterProc(nil,MethodNames[22],mtProc,TypeInfo(_T22),[
TypeInfo(string),
ArrayInfo(TypeInfo(string)),TypeInfo(Boolean)],Addr(MatchStr),cRegister);

RegisterProc(nil,MethodNames[23],mtProc,TypeInfo(_T23),[
TypeInfo(string),
ArrayInfo(TypeInfo(string)),TypeInfo(Boolean)],Addr(AnsiMatchStr),cRegister);

RegisterProc(nil,MethodNames[24],mtProc,TypeInfo(_T24),[
TypeInfo(string),
ArrayInfo(TypeInfo(string)),TypeInfo(Integer)],Addr(IndexStr),cRegister);

RegisterProc(nil,MethodNames[25],mtProc,TypeInfo(_T25),[
TypeInfo(string),
ArrayInfo(TypeInfo(string)),TypeInfo(Integer)],Addr(AnsiIndexStr),cRegister);

RegisterProc(nil,MethodNames[26],mtProc,TypeInfo(_T26),[
TypeInfo(string),
TypeInfo(Integer),TypeInfo(string)],Addr(DupeString),cRegister);

RegisterProc(nil,MethodNames[27],mtProc,TypeInfo(_T27),[
TypeInfo(string),TypeInfo(string)],Addr(ReverseString),cRegister);

RegisterProc(nil,MethodNames[28],mtProc,TypeInfo(_T28),[
TypeInfo(AnsiString),TypeInfo(AnsiString)],Addr(AnsiReverseString),cRegister);

RegisterProc(nil,MethodNames[29],mtProc,TypeInfo(_T29),[
TypeInfo(string),
TypeInfo(Cardinal),
TypeInfo(Cardinal),
TypeInfo(string),TypeInfo(string)],Addr(StuffString),cRegister);

RegisterProc(nil,MethodNames[30],mtProc,TypeInfo(_T30),[
ArrayInfo(TypeInfo(string)),TypeInfo(string)],Addr(RandomFrom),cRegister);

RegisterProc(nil,MethodNames[31],mtProc,TypeInfo(_T31),[
TypeInfo(Boolean),
TypeInfo(string),
TypeInfo(string),TypeInfo(string)],Addr(____IfThen__Wrapper),cRegister);

RegisterProc(nil,MethodNames[32],mtProc,TypeInfo(_T32),[
TypeInfo(AnsiString),
TypeInfo(Integer),TypeInfo(AnsiString)],Addr(LeftStr),cRegister);

RegisterProc(nil,MethodNames[33],mtProc,TypeInfo(_T33),[
TypeInfo(AnsiString),
TypeInfo(Integer),TypeInfo(AnsiString)],Addr(RightStr),cRegister);

RegisterProc(nil,MethodNames[34],mtProc,TypeInfo(_T34),[
TypeInfo(AnsiString),
TypeInfo(Integer),
TypeInfo(Integer),TypeInfo(AnsiString)],Addr(MidStr),cRegister);

RegisterProc(nil,MethodNames[35],mtProc,TypeInfo(_T35),[
TypeInfo(AnsiString),
TypeInfo(Integer),TypeInfo(AnsiString)],Addr(LeftBStr),cRegister);

RegisterProc(nil,MethodNames[36],mtProc,TypeInfo(_T36),[
TypeInfo(AnsiString),
TypeInfo(Integer),TypeInfo(AnsiString)],Addr(RightBStr),cRegister);

RegisterProc(nil,MethodNames[37],mtProc,TypeInfo(_T37),[
TypeInfo(AnsiString),
TypeInfo(Integer),
TypeInfo(Integer),TypeInfo(AnsiString)],Addr(MidBStr),cRegister);

RegisterProc(nil,MethodNames[38],mtProc,TypeInfo(_T38),[
TypeInfo(AnsiString),
TypeInfo(Integer),TypeInfo(AnsiString)],Addr(AnsiLeftStr),cRegister);

RegisterProc(nil,MethodNames[39],mtProc,TypeInfo(_T39),[
TypeInfo(AnsiString),
TypeInfo(Integer),TypeInfo(AnsiString)],Addr(AnsiRightStr),cRegister);

RegisterProc(nil,MethodNames[40],mtProc,TypeInfo(_T40),[
TypeInfo(AnsiString),
TypeInfo(Integer),
TypeInfo(Integer),TypeInfo(AnsiString)],Addr(AnsiMidStr),cRegister);

RegisterProc(nil,MethodNames[41],mtScriptProc,TypeInfo(_T42),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(Integer),TypeInfo(Integer)],Addr(____PosEx__Wrapper),cRegister);

RegisterProc(nil,MethodNames[42],mtScriptProc,TypeInfo(_T43),[
TypeInfo(string),
TypeInfo(TSoundexLength),TypeInfo(string)],Addr(____Soundex__Wrapper),cRegister);

RegisterProc(nil,MethodNames[43],mtScriptProc,TypeInfo(_T44),[
TypeInfo(string),
TypeInfo(TSoundexIntLength),TypeInfo(Integer)],Addr(____SoundexInt__Wrapper),cRegister);

RegisterProc(nil,MethodNames[44],mtProc,TypeInfo(_T45),[
TypeInfo(Integer),TypeInfo(string)],Addr(DecodeSoundexInt),cRegister);

RegisterProc(nil,MethodNames[45],mtProc,TypeInfo(_T46),[
TypeInfo(string),TypeInfo(Word)],Addr(SoundexWord),cRegister);

RegisterProc(nil,MethodNames[46],mtProc,TypeInfo(_T47),[
TypeInfo(Word),TypeInfo(string)],Addr(DecodeSoundexWord),cRegister);

RegisterProc(nil,MethodNames[47],mtScriptProc,TypeInfo(_T48),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(TSoundexLength),TypeInfo(Boolean)],Addr(____SoundexSimilar__Wrapper),cRegister);

RegisterProc(nil,MethodNames[48],mtScriptProc,TypeInfo(_T49),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(TSoundexLength),TypeInfo(Integer)],Addr(____SoundexCompare__Wrapper),cRegister);

RegisterProc(nil,MethodNames[49],mtProc,TypeInfo(_T50),[
TypeInfo(string),
TypeInfo(string),TypeInfo(Boolean)],Addr(SoundexProc),cRegister);

end;
initialization
__RegisteredMethods := TList.Create;
_mreg_0;
__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnregisterProcs;
end.
