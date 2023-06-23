{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDSTREAM_D2006;
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
  Classes,
  IdException,
  IdGlobal,
  IdStream;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function (p0 : Integer;
p1 : Boolean): String of object;

{_T1 = function (p0 : PChar;
var p1 : Integer;
var p2 : Boolean): Integer of object;}

_T2 = procedure (const p0 : String) of object;

_T3 = _T2;

_T4 = function : TIdStream of object;

_T5 = function : Boolean of object;

_T6 = _T5;

_T7 = procedure (p0 : Integer) of object;

_T8 = function (const p0 : Boolean): Integer of object;

_T9 = procedure (p0 : Integer;
const p1 : Boolean) of object;

_T10 = function (const p0 : Boolean): String of object;

_T11 = procedure (const p0 : String;
const p1 : Boolean) of object;

function __TIdStream__ReadLn__Wrapper(__Instance : TObject; cArgs : integer; pArgs : PArgList) : OleVariant;
begin
case cArgs of
0:
begin
result := TIdStream(__Instance).ReadLn;
end;
1:
begin
result := TIdStream(__Instance).ReadLn(OleVariant(pargs^[0]));
end;
2:
begin
result := TIdStream(__Instance).ReadLn(OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
end
end;

procedure __TIdStream__WriteLn__Wrapper(__Instance : TIdStream;
const p0 : String);
begin
TIdStream(__Instance).WriteLn(p0);
end;

function __TIdStream__ReadInteger__Wrapper(__Instance : TObject; cArgs : integer; pArgs : PArgList) : OleVariant;
begin
case cArgs of
0:
begin
result := TIdStream(__Instance).ReadInteger;
end;
1:
begin
result := TIdStream(__Instance).ReadInteger(OleVariant(pargs^[0]));
end;
end
end;

procedure __TIdStream__WriteInteger__Wrapper(__Instance : TObject; cArgs : integer; pArgs : PArgList);
begin
case cArgs of
1:
begin
TIdStream(__Instance).WriteInteger(OleVariant(pargs^[0]));
end;
2:
begin
TIdStream(__Instance).WriteInteger(OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
end
end;

function __TIdStream__ReadString__Wrapper(__Instance : TObject; cArgs : integer; pArgs : PArgList) : OleVariant;
begin
case cArgs of
0:
begin
result := TIdStream(__Instance).ReadString;
end;
1:
begin
result := TIdStream(__Instance).ReadString(OleVariant(pargs^[0]));
end;
end
end;

procedure __TIdStream__WriteString__Wrapper(__Instance : TObject; cArgs : integer; pArgs : PArgList);
begin
case cArgs of
1:
begin
TIdStream(__Instance).WriteString(OleVariant(pargs^[0]));
end;
2:
begin
TIdStream(__Instance).WriteString(OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
end
end;

procedure __RegisterProps;
begin
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..1] of TClass = (
EIdEndOfStream,
TIdStream
);
procedure __RegisterClasses;
begin
RegisterClassesInScript(ClassList);
end;

procedure __UnRegisterClasses;
begin
end;

var __RegisteredMethods : TList;
procedure _mreg_0;
begin
RegisterProc(TIdStream,'ReadLn',mtScriptMethod,TypeInfo(_T0),[
TypeInfo(Integer),
TypeInfo(Boolean),TypeInfo(String)],Addr(__TIdStream__ReadLn__Wrapper),cRegister);

RegRegisterMethod(TIdStream,'Write',TypeInfo(_T2),[
TypeInfo(String)],Addr(TIdStream.Write));

RegRegisterMethod(TIdStream,'WriteLn',TypeInfo(_T3),[
TypeInfo(String)],Addr(__TIdStream__WriteLn__Wrapper));

RegRegisterMethod(TIdStream,'This',TypeInfo(_T4),[TypeInfo(TIdStream)],Addr(TIdStream.This));

RegRegisterMethod(TIdStream,'BOF',TypeInfo(_T5),[TypeInfo(Boolean)],Addr(TIdStream.BOF));

RegRegisterMethod(TIdStream,'EOF',TypeInfo(_T6),[TypeInfo(Boolean)],Addr(TIdStream.EOF));

RegRegisterMethod(TIdStream,'Skip',TypeInfo(_T7),[
TypeInfo(Integer)],Addr(TIdStream.Skip));

RegisterProc(TIdStream,'ReadInteger',mtScriptMethod,TypeInfo(_T8),[
TypeInfo(Boolean),TypeInfo(Integer)],Addr(__TIdStream__ReadInteger__Wrapper),cRegister);

RegisterProc(TIdStream,'WriteInteger',mtScriptMethod,TypeInfo(_T9),[
TypeInfo(Integer),
TypeInfo(Boolean)],Addr(__TIdStream__WriteInteger__Wrapper),cRegister);

RegisterProc(TIdStream,'ReadString',mtScriptMethod,TypeInfo(_T10),[
TypeInfo(Boolean),TypeInfo(String)],Addr(__TIdStream__ReadString__Wrapper),cRegister);

RegisterProc(TIdStream,'WriteString',mtScriptMethod,TypeInfo(_T11),[
TypeInfo(String),
TypeInfo(Boolean)],Addr(__TIdStream__WriteString__Wrapper),cRegister);

end;
initialization
_mreg_0;
{RegisterProc(TIdStream,'FindEOL',mtClassMethod,TypeInfo(_T1),[
TypeInfoPChar,
TypeInfo(Integer),
TypeInfo(Boolean),TypeInfo(Integer)],Addr(TIdStream.FindEOL),cRegister)}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.