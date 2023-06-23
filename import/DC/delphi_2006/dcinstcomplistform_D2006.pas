{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit dcinstcomplistform_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  dcscript,
  dcdreamlib,
  Windows,
  Classes,
  Graphics,
  Controls,
  Forms,
  StdCtrls,
  Buttons,
  ExtCtrls,
  ImgList,
  ActiveX,
  DCButtonPanel,
  DCSystem,
  DCGen,
  DCConsts,
  DCImageListBox,
  DCPalette,
  DCGraphFunc,
  DCInstCompListForm;
function ConvertTGUIDToVariant(var R : TGUID) : OleVariant;
function ConvertVariantToTGUID(const V : OleVariant) : TGUID;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type __TGUID__Wrapper = class(TDCRecordWrapper)
private
fR : TGUID;
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
_T0 = procedure (const p0 : IDispatch) of object;

_T1 = procedure (p0 : THandle) of object;

function __TGUID__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __TGUID__Wrapper.setD1(const val : LongWord);
begin
TGUID(GetRecordPtr^).D1 := val;
end;
function __TGUID__Wrapper.getD1 : LongWord;
begin
result := TGUID(GetRecordPtr^).D1;
end;
procedure __TGUID__Wrapper.setD2(const val : Word);
begin
TGUID(GetRecordPtr^).D2 := val;
end;
function __TGUID__Wrapper.getD2 : Word;
begin
result := TGUID(GetRecordPtr^).D2;
end;
procedure __TGUID__Wrapper.setD3(const val : Word);
begin
TGUID(GetRecordPtr^).D3 := val;
end;
function __TGUID__Wrapper.getD3 : Word;
begin
result := TGUID(GetRecordPtr^).D3;
end;
procedure __TDCLibActiveXListForm__InitActiveXs__Wrapper(__Instance : TDCLibActiveXListForm;
const p0 : IDispatch);
var
__p0 : ^TGUID;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
TDCLibActiveXListForm(__Instance).InitActiveXs(__p0^);
end;


type __TGUID__Wrapper__ = class(__TGUID__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TGUID__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTGUIDToVariant(var R : TGUID) : OleVariant;
var
__rw : __TGUID__Wrapper__;
begin
__rw := __TGUID__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTGUID(const V : OleVariant) : TGUID;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TGUID((_idisp as IDCRecordWrapper).GetRecordPtr^);
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

const ClassList : array[0..2] of TClass = (
TDCComponentsListForm,
TDCLibActiveXListForm,
TDCLibComponentsListForm
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
RegRegisterMethod(TDCLibActiveXListForm,'InitActiveXs',TypeInfo(_T0),[
TypeInfo(IDispatch)],Addr(__TDCLibActiveXListForm__InitActiveXs__Wrapper));

RegRegisterMethod(TDCLibComponentsListForm,'InitComponents',TypeInfo(_T1),[
TypeInfo(THandle)],Addr(TDCLibComponentsListForm.InitComponents));

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
