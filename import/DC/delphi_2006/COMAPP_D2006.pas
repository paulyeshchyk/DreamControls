{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit COMAPP_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  activex,
  classes,
  dcscript,
  dcsystem,
  dcdreamlib,
  SockApp,
  ComApp;
function ConvertTGuidToVariant(var R : TGuid) : OleVariant;
function ConvertVariantToTGuid(const V : OleVariant) : TGuid;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type __TGuid__Wrapper = class(TDCRecordWrapper)
private
fR : TGuid;
public
function GetRecordPtr : pointer; override;
published
procedure setD1(const val : LongWord);
function getD1 : LongWord;
property D1 : LongWord read getD1 write setD1;
procedure setD2(const val : Word);
function getD2 : Word;
property D2 : Word read getD2 write setD2;
procedure setD3(const val : Word);
function getD3 : Word;
property D3 : Word read getD3 write setD3;
end;
type
_T0 = procedure (const p0 : IDispatch;
const p1 : string;
const p2 : string) of object;

function __TGuid__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __TGuid__Wrapper.setD1(const val : LongWord);
begin
TGuid(GetRecordPtr^).D1 := val;
end;
function __TGuid__Wrapper.getD1 : LongWord;
begin
result := TGuid(GetRecordPtr^).D1;
end;
procedure __TGuid__Wrapper.setD2(const val : Word);
begin
TGuid(GetRecordPtr^).D2 := val;
end;
function __TGuid__Wrapper.getD2 : Word;
begin
result := TGuid(GetRecordPtr^).D2;
end;
procedure __TGuid__Wrapper.setD3(const val : Word);
begin
TGuid(GetRecordPtr^).D3 := val;
end;
function __TGuid__Wrapper.getD3 : Word;
begin
result := TGuid(GetRecordPtr^).D3;
end;
procedure __TWebAppAutoObjectFactory__Create__Wrapper(__Instance : TWebAppAutoObjectFactory;
const p0 : IDispatch;
const p1 : string;
const p2 : string);
var
__p0 : ^TGuid;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
TWebAppAutoObjectFactory(__Instance).Create(__p0^,p1,p2);
end;


type __TGuid__Wrapper__ = class(__TGuid__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TGuid__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTGuidToVariant(var R : TGuid) : OleVariant;
var
__rw : __TGuid__Wrapper__;
begin
__rw := __TGuid__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTGuid(const V : OleVariant) : TGuid;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TGuid((_idisp as IDCRecordWrapper).GetRecordPtr^);
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

const ClassList : array[0..0] of TClass = (
TWebAppAutoObjectFactory
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
RegisterProc(TWebAppAutoObjectFactory,'Create',mtConstructor,TypeInfo(_T0),[
TypeInfo(IDispatch),
TypeInfo(string),
TypeInfo(string)],Addr(__TWebAppAutoObjectFactory__Create__Wrapper),cRegister);

end;
initialization
_mreg_0;
__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
