{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit VCLEDITORS_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses rtti, 
  activex,
  dcscript,
  dcsystem,
  dcdreamlib,
  Messages,
  Types,
  Classes,
  Graphics,
  Menus,
  Controls,
  Forms,
  StdCtrls,
  DesignMenus,
  ActnList;
function ConvertTRectToVariant(var R : TRect) : OleVariant;
function ConvertVariantToTRect(const V : OleVariant) : TRect;
implementation
  var vmtMethodList:TStringList; 
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
{_T0 = function (const p0 : IProperty): string of object;}

_T1 = procedure (p0 : TPropertyEditor;
p1 : TCanvas;
const p2 : IDispatch) of object;

_T2 = _T1;

_T3 = procedure (const p0 : string;
p1 : TCanvas;
const p2 : IDispatch;
p3 : Boolean) of object;

{_T4 = function (const p0 : ISelectionEditorList): ISelectionMessageList of object;}

_T5 = procedure (p0 : TMemoryStream) of object;

_T6 = function : TMemoryStream of object;

_T7 = function (p0 : TCustomEdit;
p1 : TEditAction): Boolean of object;

_T8 = function (p0 : TCustomEdit): TEditState of object;

{_T9 = procedure (const p0 : string;
const p1 : Array of TBasicActionClass;
p2 : TComponentClass) of object;}

{_T10 = procedure (const p0 : Array of TBasicActionClass) of object;}

{_T11 = procedure (p0 : TEnumActionProc;
p1 : Pointer) of object;}

{_T12 = function (p0 : TComponent;
p1 : TBasicActionClass): TBasicAction of object;}

_T13 = procedure (const p0 : string;
p1 : TCanvas;
var p2 : Integer) of object;

_T14 = _T13;

_T15 = _T3;

_T16 = procedure (p0 : TCanvas;
const p1 : IDispatch;
p2 : Boolean) of object;

_T17 = _T16;

_T18 = _T13;

_T19 = _T13;

_T20 = _T3;

_T21 = _T16;

_T22 = _T16;

_T23 = function (const p0 : IDispatch): IDispatch of object;

_T24 = _T23;

_T25 = function : Boolean of object;

_T26 = function (p0 : TControl;
p1 : TTextLayout): Integer of object;

_T27 = _T13;

_T28 = _T13;

_T29 = _T3;

_T30 = _T13;

_T31 = _T13;

_T32 = _T3;

_T33 = _T13;

_T34 = _T13;

_T35 = _T3;

_T36 = _T16;

_T37 = _T16;

_T38 = function : TPadding of object;

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
procedure ____DefaultPropertyDrawName__Wrapper(p0 : TPropertyEditor;
p1 : TCanvas;
const p2 : IDispatch);
var
__p2 : ^TRect;
__i2 : IDispatch;
begin
if p2 = nil then exit;
__p2 := (p2 as IDCRecordWrapper).GetRecordPtr;
DefaultPropertyDrawName(p0,p1,__p2^);
end;

procedure ____DefaultPropertyDrawValue__Wrapper(p0 : TPropertyEditor;
p1 : TCanvas;
const p2 : IDispatch);
var
__p2 : ^TRect;
__i2 : IDispatch;
begin
if p2 = nil then exit;
__p2 := (p2 as IDCRecordWrapper).GetRecordPtr;
DefaultPropertyDrawValue(p0,p1,__p2^);
end;

procedure ____DefaultPropertyListDrawValue__Wrapper(const p0 : string;
p1 : TCanvas;
const p2 : IDispatch;
p3 : Boolean);
var
__p2 : ^TRect;
__i2 : IDispatch;
begin
if p2 = nil then exit;
__p2 := (p2 as IDCRecordWrapper).GetRecordPtr;
DefaultPropertyListDrawValue(p0,p1,__p2^,p3);
end;

procedure __TBrushStyleProperty__ListDrawValue__Wrapper(__Instance : TBrushStyleProperty;
const p0 : string;
p1 : TCanvas;
const p2 : IDispatch;
p3 : Boolean);
var
__p2 : ^TRect;
__i2 : IDispatch;
begin
if p2 = nil then exit;
__p2 := (p2 as IDCRecordWrapper).GetRecordPtr;
TBrushStyleProperty(__Instance).ListDrawValue(p0,p1,__p2^,p3);
end;

procedure __TBrushStyleProperty__PropDrawName__Wrapper(__Instance : TBrushStyleProperty;
p0 : TCanvas;
const p1 : IDispatch;
p2 : Boolean);
var
__p1 : ^TRect;
__i1 : IDispatch;
begin
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
TBrushStyleProperty(__Instance).PropDrawName(p0,__p1^,p2);
end;

procedure __TBrushStyleProperty__PropDrawValue__Wrapper(__Instance : TBrushStyleProperty;
p0 : TCanvas;
const p1 : IDispatch;
p2 : Boolean);
var
__p1 : ^TRect;
__i1 : IDispatch;
begin
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
TBrushStyleProperty(__Instance).PropDrawValue(p0,__p1^,p2);
end;

procedure __TColorProperty__ListDrawValue__Wrapper(__Instance : TColorProperty;
const p0 : string;
p1 : TCanvas;
const p2 : IDispatch;
p3 : Boolean);
var
__p2 : ^TRect;
__i2 : IDispatch;
begin
if p2 = nil then exit;
__p2 := (p2 as IDCRecordWrapper).GetRecordPtr;
TColorProperty(__Instance).ListDrawValue(p0,p1,__p2^,p3);
end;

procedure __TColorProperty__PropDrawName__Wrapper(__Instance : TColorProperty;
p0 : TCanvas;
const p1 : IDispatch;
p2 : Boolean);
var
__p1 : ^TRect;
__i1 : IDispatch;
begin
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
TColorProperty(__Instance).PropDrawName(p0,__p1^,p2);
end;

procedure __TColorProperty__PropDrawValue__Wrapper(__Instance : TColorProperty;
p0 : TCanvas;
const p1 : IDispatch;
p2 : Boolean);
var
__p1 : ^TRect;
__i1 : IDispatch;
begin
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
TColorProperty(__Instance).PropDrawValue(p0,__p1^,p2);
end;

function __TColorProperty__PropDrawNameRect__Wrapper(__Instance : TColorProperty;
const p0 : IDispatch): IDispatch;
var
__result : TRect;
__wrapper : __TRect__Wrapper;
__p0 : ^TRect;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
__result := TColorProperty(__Instance).PropDrawNameRect(__p0^);
__wrapper := __TRect__Wrapper.Create;
__wrapper.fR := __result;
result := IDispatch(__wrapper);
end;

function __TColorProperty__PropDrawValueRect__Wrapper(__Instance : TColorProperty;
const p0 : IDispatch): IDispatch;
var
__result : TRect;
__wrapper : __TRect__Wrapper;
__p0 : ^TRect;
__i0 : IDispatch;
begin
if p0 = nil then exit;
__p0 := (p0 as IDCRecordWrapper).GetRecordPtr;
__result := TColorProperty(__Instance).PropDrawValueRect(__p0^);
__wrapper := __TRect__Wrapper.Create;
__wrapper.fR := __result;
result := IDispatch(__wrapper);
end;

procedure __TCursorProperty__ListDrawValue__Wrapper(__Instance : TCursorProperty;
const p0 : string;
p1 : TCanvas;
const p2 : IDispatch;
p3 : Boolean);
var
__p2 : ^TRect;
__i2 : IDispatch;
begin
if p2 = nil then exit;
__p2 := (p2 as IDCRecordWrapper).GetRecordPtr;
TCursorProperty(__Instance).ListDrawValue(p0,p1,__p2^,p3);
end;

procedure __TFontNameProperty__ListDrawValue__Wrapper(__Instance : TFontNameProperty;
const p0 : string;
p1 : TCanvas;
const p2 : IDispatch;
p3 : Boolean);
var
__p2 : ^TRect;
__i2 : IDispatch;
begin
if p2 = nil then exit;
__p2 := (p2 as IDCRecordWrapper).GetRecordPtr;
TFontNameProperty(__Instance).ListDrawValue(p0,p1,__p2^,p3);
end;

procedure __TPenStyleProperty__ListDrawValue__Wrapper(__Instance : TPenStyleProperty;
const p0 : string;
p1 : TCanvas;
const p2 : IDispatch;
p3 : Boolean);
var
__p2 : ^TRect;
__i2 : IDispatch;
begin
if p2 = nil then exit;
__p2 := (p2 as IDCRecordWrapper).GetRecordPtr;
TPenStyleProperty(__Instance).ListDrawValue(p0,p1,__p2^,p3);
end;

procedure __TPenStyleProperty__PropDrawName__Wrapper(__Instance : TPenStyleProperty;
p0 : TCanvas;
const p1 : IDispatch;
p2 : Boolean);
var
__p1 : ^TRect;
__i1 : IDispatch;
begin
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
TPenStyleProperty(__Instance).PropDrawName(p0,__p1^,p2);
end;

procedure __TPenStyleProperty__PropDrawValue__Wrapper(__Instance : TPenStyleProperty;
p0 : TCanvas;
const p1 : IDispatch;
p2 : Boolean);
var
__p1 : ^TRect;
__i1 : IDispatch;
begin
if p1 = nil then exit;
__p1 := (p1 as IDCRecordWrapper).GetRecordPtr;
TPenStyleProperty(__Instance).PropDrawValue(p0,__p1^,p2);
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
procedure __RegisterProps;
begin
end;

function __DC__GetVCLEditors__FontNamePropertyDisplayFontNames(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VCLEditors.FontNamePropertyDisplayFontNames;
end;

procedure __DC__SetVCLEditors__FontNamePropertyDisplayFontNames(Instance : TObject; Params : PVariantArgList);
begin
VCLEditors.FontNamePropertyDisplayFontNames:=OleVariant(Params^[0]);
end;

function __DC__GetVCLEditors__CF_COMPONENTS(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VCLEditors.CF_COMPONENTS;
end;

procedure __DC__SetVCLEditors__CF_COMPONENTS(Instance : TObject; Params : PVariantArgList);
begin
VCLEditors.CF_COMPONENTS:=OleVariant(Params^[0]);
end;

function __DC__GetVCLEditors__CF_COMPONENT(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VCLEditors.CF_COMPONENT;
end;

procedure __DC__SetVCLEditors__CF_COMPONENT(Instance : TObject; Params : PVariantArgList);
begin
VCLEditors.CF_COMPONENT:=OleVariant(Params^[0]);
end;

function __DC__GetVCLEditors__BaseRegistryKey(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VCLEditors.BaseRegistryKey;
end;

procedure __DC__SetVCLEditors__BaseRegistryKey(Instance : TObject; Params : PVariantArgList);
begin
VCLEditors.BaseRegistryKey:=OleVariant(Params^[0]);
end;

var __RegisteredVars : TList;
procedure __RegisterVars;
begin
__RegisteredVars := TList.Create;
__RegisteredVars.Add(RegisterVar('FontNamePropertyDisplayFontNames',__DC__GetVCLEditors__FontNamePropertyDisplayFontNames,__DC__SetVCLEditors__FontNamePropertyDisplayFontNames));
__RegisteredVars.Add(RegisterVar('CF_COMPONENTS',__DC__GetVCLEditors__CF_COMPONENTS,__DC__SetVCLEditors__CF_COMPONENTS));
__RegisteredVars.Add(RegisterVar('CF_COMPONENT',__DC__GetVCLEditors__CF_COMPONENT,__DC__SetVCLEditors__CF_COMPONENT));
__RegisteredVars.Add(RegisterVar('BaseRegistryKey',__DC__GetVCLEditors__BaseRegistryKey,__DC__SetVCLEditors__BaseRegistryKey));
end;

procedure __UnregisterVars;
begin
__RegisteredVars.Free;
end;

const __ConstNames0 : array[0..2] of string = (
'CM_FORMMODIFIED'
,'cfDelphiComponents'
,'cfDelphiComponent'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,CM_FORMMODIFIED));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,cfDelphiComponents));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,cfDelphiComponent));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..15] of TClass = (
TBrushStyleProperty,
TCaptionProperty,
TColorProperty,
TControlGuidelines,
TCursorProperty,
TCustomFormGuidelines,
TFontCharsetProperty,
TFontNameProperty,
TFontProperty,
TImeNameProperty,
TModalResultProperty,
TMPFilenameProperty,
TPenStyleProperty,
TShortCutProperty,
TTabOrderProperty,
TWinControlGuidelines
);
 function __getFullMethodName(sclassName, smethodName:String):String; 
 begin 
   result := format('%s.%s',[sClassName, sMethodName]) 
 end; 
procedure fillVMTProcs();
var
  ctx : TRttiContext;
  t:TRttiType;
  m:TRttiMethod;
  i:Integer;
begin
  ctx := TRttiContext.Create;
  try
    for i := 0 to length(classList) - 1 do
    begin
      t:=ctx.GetType(classList[i].ClassInfo);
      for m in t.GetMethods  do
      begin
        if m.DispatchKind = dkVtable then
        vmtMethodList.addObject(__getFullMethodName(classList[i].className,m.Name), pointer(m.VirtualIndex*4));
      end;
      t.free;
    end;
  finally
    ctx.free;
  end;
end;
function getVMTProcAddr(className, MethodName:String;oldAddr:Integer):Pointer;
var i:Integer;
begin
  i:=vmtMethodList.indexOf(__getFullMethodName(className,methodName));
  if i>-1 then 
    result:=pointer(vmtMethodList.Objects[i])
  else 
  result:=pointer(oldAddr);
end;  
procedure __RegisterClasses;
begin
RegisterClassesInScript(ClassList);
end;

procedure __UnRegisterClasses;
begin
end;

var __RegisteredMethods : TList;
const MethodNames : array[0..6] of string = (
'DefaultPropertyDrawName'
,'DefaultPropertyDrawValue'
,'DefaultPropertyListDrawValue'
,'CopyStreamToClipboard'
,'GetClipboardStream'
,'EditActionFor'
,'GetEditStateFor'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T1),[
TypeInfo(TPropertyEditor),
TypeInfo(TCanvas),
TypeInfo(IDispatch)],Addr(____DefaultPropertyDrawName__Wrapper),cRegister);

RegisterProc(nil,MethodNames[1],mtProc,TypeInfo(_T2),[
TypeInfo(TPropertyEditor),
TypeInfo(TCanvas),
TypeInfo(IDispatch)],Addr(____DefaultPropertyDrawValue__Wrapper),cRegister);

RegisterProc(nil,MethodNames[2],mtProc,TypeInfo(_T3),[
TypeInfo(string),
TypeInfo(TCanvas),
TypeInfo(IDispatch),
TypeInfo(Boolean)],Addr(____DefaultPropertyListDrawValue__Wrapper),cRegister);

RegisterProc(nil,MethodNames[3],mtProc,TypeInfo(_T5),[
TypeInfo(TMemoryStream)],Addr(CopyStreamToClipboard),cRegister);

RegisterProc(nil,MethodNames[4],mtProc,TypeInfo(_T6),[TypeInfo(TMemoryStream)],Addr(GetClipboardStream),cRegister);

RegisterProc(nil,MethodNames[5],mtProc,TypeInfo(_T7),[
TypeInfo(TCustomEdit),
TypeInfo(TEditAction),TypeInfo(Boolean)],Addr(EditActionFor),cRegister);

RegisterProc(nil,MethodNames[6],mtProc,TypeInfo(_T8),[
TypeInfo(TCustomEdit),TypeInfo(TEditState)],Addr(GetEditStateFor),cRegister);

RegRegisterMethod(TBrushStyleProperty,'ListMeasureHeight',TypeInfo(_T13),[
TypeInfo(string),
TypeInfo(TCanvas),
TypeInfo(Integer)],Addr(TBrushStyleProperty.ListMeasureHeight));

RegRegisterMethod(TBrushStyleProperty,'ListMeasureWidth',TypeInfo(_T14),[
TypeInfo(string),
TypeInfo(TCanvas),
TypeInfo(Integer)],Addr(TBrushStyleProperty.ListMeasureWidth));

RegRegisterMethod(TBrushStyleProperty,'ListDrawValue',TypeInfo(_T15),[
TypeInfo(string),
TypeInfo(TCanvas),
TypeInfo(IDispatch),
TypeInfo(Boolean)],Addr(__TBrushStyleProperty__ListDrawValue__Wrapper));

RegRegisterMethod(TBrushStyleProperty,'PropDrawName',TypeInfo(_T16),[
TypeInfo(TCanvas),
TypeInfo(IDispatch),
TypeInfo(Boolean)],Addr(__TBrushStyleProperty__PropDrawName__Wrapper));

RegRegisterMethod(TBrushStyleProperty,'PropDrawValue',TypeInfo(_T17),[
TypeInfo(TCanvas),
TypeInfo(IDispatch),
TypeInfo(Boolean)],Addr(__TBrushStyleProperty__PropDrawValue__Wrapper));

RegRegisterMethod(TColorProperty,'ListMeasureHeight',TypeInfo(_T18),[
TypeInfo(string),
TypeInfo(TCanvas),
TypeInfo(Integer)],Addr(TColorProperty.ListMeasureHeight));

RegRegisterMethod(TColorProperty,'ListMeasureWidth',TypeInfo(_T19),[
TypeInfo(string),
TypeInfo(TCanvas),
TypeInfo(Integer)],Addr(TColorProperty.ListMeasureWidth));

RegRegisterMethod(TColorProperty,'ListDrawValue',TypeInfo(_T20),[
TypeInfo(string),
TypeInfo(TCanvas),
TypeInfo(IDispatch),
TypeInfo(Boolean)],Addr(__TColorProperty__ListDrawValue__Wrapper));

RegRegisterMethod(TColorProperty,'PropDrawName',TypeInfo(_T21),[
TypeInfo(TCanvas),
TypeInfo(IDispatch),
TypeInfo(Boolean)],Addr(__TColorProperty__PropDrawName__Wrapper));

RegRegisterMethod(TColorProperty,'PropDrawValue',TypeInfo(_T22),[
TypeInfo(TCanvas),
TypeInfo(IDispatch),
TypeInfo(Boolean)],Addr(__TColorProperty__PropDrawValue__Wrapper));

RegRegisterMethod(TColorProperty,'PropDrawNameRect',TypeInfo(_T23),[
TypeInfo(IDispatch),TypeInfo(IDispatch)],Addr(__TColorProperty__PropDrawNameRect__Wrapper));

RegRegisterMethod(TColorProperty,'PropDrawValueRect',TypeInfo(_T24),[
TypeInfo(IDispatch),TypeInfo(IDispatch)],Addr(__TColorProperty__PropDrawValueRect__Wrapper));

//RegRegisterMethod(TControlGuidelines,'GetCtl3D',TypeInfo(_T25),[TypeInfo(Boolean)], pointer(28));
RegRegisterMethod(TControlGuidelines,'GetCtl3D',TypeInfo(_T25),[TypeInfo(Boolean)],  getVMTProcAddr('TControlGuidelines','GetCtl3D',28));


RegisterProc(TControlGuidelines,'GetTextBaseline',mtClassMethod,TypeInfo(_T26),[
TypeInfo(TControl),
TypeInfo(TTextLayout),TypeInfo(Integer)],Addr(TControlGuidelines.GetTextBaseline),cRegister);

RegRegisterMethod(TCursorProperty,'ListMeasureHeight',TypeInfo(_T27),[
TypeInfo(string),
TypeInfo(TCanvas),
TypeInfo(Integer)],Addr(TCursorProperty.ListMeasureHeight));

RegRegisterMethod(TCursorProperty,'ListMeasureWidth',TypeInfo(_T28),[
TypeInfo(string),
TypeInfo(TCanvas),
TypeInfo(Integer)],Addr(TCursorProperty.ListMeasureWidth));

RegRegisterMethod(TCursorProperty,'ListDrawValue',TypeInfo(_T29),[
TypeInfo(string),
TypeInfo(TCanvas),
TypeInfo(IDispatch),
TypeInfo(Boolean)],Addr(__TCursorProperty__ListDrawValue__Wrapper));

RegRegisterMethod(TFontNameProperty,'ListMeasureHeight',TypeInfo(_T30),[
TypeInfo(string),
TypeInfo(TCanvas),
TypeInfo(Integer)],Addr(TFontNameProperty.ListMeasureHeight));

RegRegisterMethod(TFontNameProperty,'ListMeasureWidth',TypeInfo(_T31),[
TypeInfo(string),
TypeInfo(TCanvas),
TypeInfo(Integer)],Addr(TFontNameProperty.ListMeasureWidth));

RegRegisterMethod(TFontNameProperty,'ListDrawValue',TypeInfo(_T32),[
TypeInfo(string),
TypeInfo(TCanvas),
TypeInfo(IDispatch),
TypeInfo(Boolean)],Addr(__TFontNameProperty__ListDrawValue__Wrapper));

RegRegisterMethod(TPenStyleProperty,'ListMeasureHeight',TypeInfo(_T33),[
TypeInfo(string),
TypeInfo(TCanvas),
TypeInfo(Integer)],Addr(TPenStyleProperty.ListMeasureHeight));

RegRegisterMethod(TPenStyleProperty,'ListMeasureWidth',TypeInfo(_T34),[
TypeInfo(string),
TypeInfo(TCanvas),
TypeInfo(Integer)],Addr(TPenStyleProperty.ListMeasureWidth));

RegRegisterMethod(TPenStyleProperty,'ListDrawValue',TypeInfo(_T35),[
TypeInfo(string),
TypeInfo(TCanvas),
TypeInfo(IDispatch),
TypeInfo(Boolean)],Addr(__TPenStyleProperty__ListDrawValue__Wrapper));

RegRegisterMethod(TPenStyleProperty,'PropDrawName',TypeInfo(_T36),[
TypeInfo(TCanvas),
TypeInfo(IDispatch),
TypeInfo(Boolean)],Addr(__TPenStyleProperty__PropDrawName__Wrapper));

RegRegisterMethod(TPenStyleProperty,'PropDrawValue',TypeInfo(_T37),[
TypeInfo(TCanvas),
TypeInfo(IDispatch),
TypeInfo(Boolean)],Addr(__TPenStyleProperty__PropDrawValue__Wrapper));

//RegRegisterMethod(TWinControlGuidelines,'GetControlPadding',TypeInfo(_T38),[TypeInfo(TPadding)], pointer(32));
RegRegisterMethod(TWinControlGuidelines,'GetControlPadding',TypeInfo(_T38),[TypeInfo(TPadding)],  getVMTProcAddr('TWinControlGuidelines','GetControlPadding',32));


end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
__RegisteredMethods := TList.Create;
_mreg_0;
{RegisterProc(nil,'GetDisplayValue',mtProc,TypeInfo(_T0),[
TypeInfo(IProperty),TypeInfo(string)],Addr(GetDisplayValue),cRegister)}

{RegisterProc(nil,'SelectionMessageListOf',mtProc,TypeInfo(_T4),[
TypeInfo(ISelectionEditorList),TypeInfo(ISelectionMessageList)],Addr(SelectionMessageListOf),cRegister)}

{RegisterProc(nil,'RegActions',mtProc,TypeInfo(_T9),[
TypeInfo(string),
ArrayInfo(TypeInfo(TBasicActionClass)),
TypeInfo(TComponentClass)],Addr(RegActions),cRegister)}

{RegisterProc(nil,'UnRegActions',mtProc,TypeInfo(_T10),[
ArrayInfo(TypeInfo(TBasicActionClass))],Addr(UnRegActions),cRegister)}

{RegisterProc(nil,'EnumActions',mtProc,TypeInfo(_T11),[
TypeInfo(TEnumActionProc),
TypeInfoPointer],Addr(EnumActions),cRegister)}

{RegisterProc(nil,'CreateAction',mtProc,TypeInfo(_T12),[
TypeInfo(TComponent),
TypeInfo(TBasicActionClass),TypeInfo(TBasicAction)],Addr(CreateAction),cRegister)}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
__RegisterVars;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnRegisterVars;
__UnregisterProcs;
end.
