{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit dcactivexlist_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  dcscript,
  Classes,
  ActiveX,
  Messages,
  Controls,
  DCSystem,
  DCdreamLib,
  DCPalette,
  DCImageListBox,
  DCInstCompListForm,
  DCActiveXList;
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
_T0 = procedure  of object;

_T1 = _T0;

_T2 = _T0;

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
function __DC__GetTDCActiveXListItem__TypeLib(Instance : TObject; Params : PVariantArgList) : OleVariant;
var
__wrapper : __TGUID__Wrapper;
begin
__wrapper := __TGUID__Wrapper.Create;
__wrapper.fR := TDCActiveXListItem(Instance).TypeLib;
result := IUnknown(__wrapper) as IDispatch;
end;

procedure __DC__SetTDCActiveXListItem__TypeLib(Instance : TObject; Params : PVariantArgList);
var
__idisp:IDispatch;
__iwrapper:IDCRecordWrapper;
begin
__idisp:=DCVarToInterface(OleVariant(Params^[0]));
if __idisp=nil then exit;
__idisp.QueryInterface(IDCRecordWrapper, __iwrapper);
TDCActiveXListItem(Instance).TypeLib:=TGUID(__iwrapper.GetRecordPtr^);
end;

function __DC__GetTDCActiveXListItem__LibraryName(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCActiveXListItem(Instance).LibraryName;
end;

procedure __DC__SetTDCActiveXListItem__LibraryName(Instance : TObject; Params : PVariantArgList);
begin
TDCActiveXListItem(Instance).LibraryName:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomActiveXListBox__RegisterImmediately(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomActiveXListBox(Instance).RegisterImmediately;
end;

procedure __DC__SetTDCCustomActiveXListBox__RegisterImmediately(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomActiveXListBox(Instance).RegisterImmediately:=OleVariant(Params^[0]);
end;

function __DC__GetTDCCustomActiveXListBox__Sorted(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TDCCustomActiveXListBox(Instance).Sorted;
end;

procedure __DC__SetTDCCustomActiveXListBox__Sorted(Instance : TObject; Params : PVariantArgList);
begin
TDCCustomActiveXListBox(Instance).Sorted:=OleVariant(Params^[0]);
end;

procedure __RegisterProps;
begin
RegisterProperty(TDCActiveXListItem,'TypeLib',__DC__GetTDCActiveXListItem__TypeLib,__DC__SetTDCActiveXListItem__TypeLib);
RegisterProperty(TDCActiveXListItem,'LibraryName',__DC__GetTDCActiveXListItem__LibraryName,__DC__SetTDCActiveXListItem__LibraryName);
RegisterProperty(TDCCustomActiveXListBox,'RegisterImmediately',__DC__GetTDCCustomActiveXListBox__RegisterImmediately,__DC__SetTDCCustomActiveXListBox__RegisterImmediately);
RegisterProperty(TDCCustomActiveXListBox,'Sorted',__DC__GetTDCCustomActiveXListBox__Sorted,__DC__SetTDCCustomActiveXListBox__Sorted);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..2] of TClass = (
TDCActiveXListBox,
TDCActiveXListItem,
TDCCustomActiveXListBox
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
RegRegisterMethod(TDCCustomActiveXListBox,'Initialize',TypeInfo(_T0),NoParams,Addr(TDCCustomActiveXListBox.Initialize));

RegRegisterMethod(TDCCustomActiveXListBox,'ShowDetails',TypeInfo(_T1),NoParams,Addr(TDCCustomActiveXListBox.ShowDetails));

RegRegisterMethod(TDCCustomActiveXListBox,'SaveChanges',TypeInfo(_T2),NoParams,Addr(TDCCustomActiveXListBox.SaveChanges));

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
