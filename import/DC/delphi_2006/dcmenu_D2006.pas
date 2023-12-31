{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit dcmenu_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  Types,
  activex,
  dcscript,
  windows,
  forms,
  classes,
  menus,
  graphics,
  controls,
  commctrl,
  sysutils,
  messages,
  dcconsts,
  dcsystem,
  dcdreamlib,
  dccommon,
  dcmenu;
function ConvertTRectToVariant(var R : TRect) : OleVariant;
function ConvertVariantToTRect(const V : OleVariant) : TRect;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type __TRect__Wrapper = class(TDCRecordWrapper)
private
fR : TRect;
public
function GetRecordPtr : pointer; override;
published
procedure setLeft(const val : Longint);
function getLeft : Longint;
property Left : Longint read getLeft write setLeft;
procedure setTop(const val : Longint);
function getTop : Longint;
property Top : Longint read getTop write setTop;
procedure setRight(const val : Longint);
function getRight : Longint;
property Right : Longint read getRight write setRight;
procedure setBottom(const val : Longint);
function getBottom : Longint;
property Bottom : Longint read getBottom write setBottom;
end;
type
_T0 = function (p0 : TMenuItem): Integer of object;

_T1 = procedure (p0 : THandle;
const p1 : IDispatch;
const p2 : string;
p3 : Integer;
p4 : Boolean) of object;

_T2 = procedure (p0 : THandle;
const p1 : IDispatch;
p2 : TColor;
p3 : TColor) of object;

_T3 = procedure (p0 : TDCMenu) of object;

_T4 = function : TItemInfo of object;

function __TRect__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __TRect__Wrapper.setLeft(const val : Longint);
begin
TRect(GetRecordPtr^).Left := val;
end;
function __TRect__Wrapper.getLeft : Longint;
begin
result := TRect(GetRecordPtr^).Left;
end;
procedure __TRect__Wrapper.setTop(const val : Longint);
begin
TRect(GetRecordPtr^).Top := val;
end;
function __TRect__Wrapper.getTop : Longint;
begin
result := TRect(GetRecordPtr^).Top;
end;
procedure __TRect__Wrapper.setRight(const val : Longint);
begin
TRect(GetRecordPtr^).Right := val;
end;
function __TRect__Wrapper.getRight : Longint;
begin
result := TRect(GetRecordPtr^).Right;
end;
procedure __TRect__Wrapper.setBottom(const val : Longint);
begin
TRect(GetRecordPtr^).Bottom := val;
end;
function __TRect__Wrapper.getBottom : Longint;
begin
result := TRect(GetRecordPtr^).Bottom;
end;
procedure ____DrawGrayText__Wrapper(p0 : THandle;
const p1 : IDispatch;
const p2 : string;
p3 : Integer;
p4 : Boolean);
var
__p1 : ^TRect;
__i1 : IDispatch;
begin
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
DrawGrayText(p0,__p1^,p2,p3,p4);
end;

procedure ____DrawBeveledRect__Wrapper(p0 : THandle;
const p1 : IDispatch;
p2 : TColor;
p3 : TColor);
var
__p1 : ^TRect;
__i1 : IDispatch;
begin
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
DrawBeveledRect(p0,__p1^,p2,p3);
end;


type __TRect__Wrapper__ = class(__TRect__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TRect__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTRectToVariant(var R : TRect) : OleVariant;
var
__rw : __TRect__Wrapper__;
begin
__rw := __TRect__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTRect(const V : OleVariant) : TRect;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TRect((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;
function __DC__GetTDCMenuItems__Items(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TDCMenuItems(Instance).Items[OleVariant(Params^[0])]);
end;

procedure __DC__SetTDCMenuItems__Items(Instance : TObject; Params : PVariantArgList);
begin
TDCMenuItems(Instance).Items[OleVariant(Params^[1])]:=TItemInfo(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTItemInfo__DCMenu(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TItemInfo(Instance).DCMenu);
end;

procedure __RegisterProps;
begin
RegisterIndexedProperty(TDCMenuItems,'Items',1,True,__DC__GetTDCMenuItems__Items,__DC__SetTDCMenuItems__Items);
RegisterProperty(TItemInfo,'DCMenu',__DC__GetTItemInfo__DCMenu,nil);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..2] of TClass = (
TDCMenu,
TDCMenuItems,
TItemInfo
);
procedure __RegisterClasses;
begin
RegisterClassesInScript(ClassList);
end;

procedure __UnRegisterClasses;
begin
end;

var __RegisteredMethods : TList;
const MethodNames : array[0..2] of string = (
'GetRealMenuIndex'
,'DrawGrayText'
,'DrawBeveledRect'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T0),[
TypeInfo(TMenuItem),TypeInfo(Integer)],Addr(GetRealMenuIndex),cRegister);

RegisterProc(nil,MethodNames[1],mtProc,TypeInfo(_T1),[
TypeInfo(THandle),
TypeInfo(IDispatch),
TypeInfo(string),
TypeInfo(Integer),
TypeInfo(Boolean)],Addr(____DrawGrayText__Wrapper),cRegister);

RegisterProc(nil,MethodNames[2],mtProc,TypeInfo(_T2),[
TypeInfo(THandle),
TypeInfo(IDispatch),
TypeInfo(TColor),
TypeInfo(TColor)],Addr(____DrawBeveledRect__Wrapper),cRegister);

RegisterProc(TDCMenuItems,'Create',mtConstructor,TypeInfo(_T3),[
TypeInfo(TDCMenu)],Addr(TDCMenuItems.Create),cRegister);

RegRegisterMethod(TDCMenuItems,'Add',TypeInfo(_T4),[TypeInfo(TItemInfo)],Addr(TDCMenuItems.Add));

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
